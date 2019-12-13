// https://www.youtube.com/watch?v=ptig62mLN84
#define ON  1
#define OFF 0
#define HORN_PERIOD_ON     4000
#define HORN_PERIOD_OFF    2000
#define HORN_ALARM_PERIOD_ON    6000
#define HORN_ALARM_PERIOD_OFF   1000

#define LED_PERIOD_DEFAULT 2000
#define LED_PERIOD_PUMP_ON 500
#define LED_PERIOD_ALARM   300
#define SKIP_PRINT_VALUE 9999111

bool fPrint_BEEP = true;
bool fPrint_HORN = true;
bool fPrint_TONE = false;
bool fPrint_LED = false;
bool fPrint_VERBOSE = false;

// byte fDEBUG=0;
byte fHORN=OFF;
byte fALARM=OFF;
byte fPUMPSTATUS;

int pumpState          = 2; // input +5Volt se Pompa accesa
int presscontrolPower  = 3; // output comanda il sonoff che spegne/accendere il pressControl.
int Horn               = 4; // output comanda una sirena
int ElettroValvola     = 5; // output chiusura acqua a caduta.... da implementare

// int inp_DEBUG          = 9; // Scrive sulla seriale
int Buzzer             = 12;
int blinkingLED        = 13;

byte ledState = 0;
int phase=0;
int DELAY, FREQ, DURATION, VOLUME ;
int led_period; // ms
long buzzer_OFF_time, horn_OFF_time, horn_ON_time;
unsigned long now, previousLedTime, previous_beep_time, buzzer_ON_time;


void lnprint(bool fDEBUG, char *msg, unsigned long value=SKIP_PRINT_VALUE, const char *s2="\n");
void checkLed(void);
void checkPumpState(void);
void setPhase(int);
void checkHorn(void);

int BEEP[] = { // delaySec, frequency, duration, volume(only with tone_AC)     phase,
                     5,         2000,    1500,      1,                          //  0

                    // 30,         2000,    1000,      2,                          //  1
                    // 30,         2000,    1000,      3,                          //  2
                    // 30,         2000,    1000,      4,                          //  3
                    // 30,         2000,    1000,      5,                          //  4

                    // 15,         2000,    1000,      6,                          //  5
                    // 15,         2000,    1000,      7,                          //  6
                    // 15,         2000,    1000,      8,                          //  7
                    // 15,         2000,    1000,      9,                          //  8

                    // 10,         2000,    1000,      9,                          //  9
                    // 10,         2000,    1000,      9,                          // 10
                    // 10,         2000,    1000,      9,                          // 10
                    10,         2000,    1000,      9,                          // 10
            };


#define nPhases  (sizeof(BEEP)/sizeof(int)/4) - 1
// #define nPhases  2

void setup() {
    Serial.begin(9600);
    pinMode(pumpState          , INPUT_PULLUP);

    pinMode(presscontrolPower  , OUTPUT);
    pinMode(Horn               , OUTPUT);
    pinMode(Buzzer             , OUTPUT);
    pinMode(blinkingLED        , OUTPUT);
    // pinMode(ElettroValvola     , OUTPUT); // ...coming

    // attachInterrupt(digitalPinToInterrupt(pumpState), pumpState_ISR, CHANGE);
    // attachInterrupt(digitalPinToInterrupt(pumpState), pumpState_ISR, FALLING);

    lnprint(true, "Starting...");
    lnprint(true, "numero di phases...: ", nPhases);
    setPhase(0);
    led_period = LED_PERIOD_DEFAULT;
}


void tone_test() {
    for (int freq=2000; freq<=3000; freq+=100) {
        lnprint(fPrint_TONE, "freq: ", freq);
        tone(Buzzer   , freq, 1000);
        delay(1000*1.3); // mandatory in quanto la funzione tone non è bloccante.
        noTone(Buzzer   );
    }
}


// ==================================
// -
// ==================================
void loop() {
    now = millis();

    checkLed();
    checkPumpState();
    checkHorn();


    if (buzzer_OFF_time!=0 && buzzer_OFF_time<now) { // se stiamo suonando ed è scaduto il time... chiudiamo il buzzer
        lnprint(fPrint_BEEP, "now: ", now, " - ");
        lnprint(fPrint_BEEP, "Beep completato.");
        noTone(Buzzer);
        buzzer_OFF_time=0;
        // Serial.println();
    }



} // end loop()


// ==================================
// -
// ==================================
void checkLed() {
unsigned long isLedTime;

    isLedTime = (now-previousLedTime)>=led_period;
    if (isLedTime) {
        previousLedTime = now;
        ledState = !ledState;
        lnprint(fPrint_LED, "LED Status: ", ledState);
        lnprint(fPrint_LED, " - period: ", led_period);
        digitalWrite(blinkingLED, ledState);
    }
}

// ==================================
// -
// ==================================
void checkHorn() {
// static bool horn_prev_state;

    if (fHORN) {
        byte fHornStatus = digitalRead(Horn);
        switch(fHornStatus) {
            case ON:
                if (horn_ON_time<millis()) {
                    digitalWrite(Horn, OFF);
                    lnprint(fPrint_HORN, "now: ", now, " - ");
                    lnprint(fPrint_HORN, "Horn OFF.\n");
                    horn_OFF_time=millis()+HORN_PERIOD_OFF;
                }
                break;
            case OFF:
                if (horn_OFF_time<millis()) {
                    digitalWrite(Horn, ON);
                    lnprint(fPrint_HORN, "now: ", now, " - ");
                    lnprint(fPrint_HORN, "Horn ON.\n");
                    horn_ON_time=millis()+HORN_PERIOD_ON;
                }
                break;
        } // ens switch
    } // endif
    else {
        digitalWrite(Horn, ON);
        horn_ON_time=0;
        horn_OFF_time=0;
    } // end else

    // horn_OFF_time = now + HORN_PERIOD_ON;
    // digitalWrite(Horn, OFF); // Rilascia il pulsante del sonoff
}

// ==================================
// -
// ==================================
void checkPumpState() {
unsigned long isBeepTime, isHornTime;

    isBeepTime  = now>=buzzer_ON_time;       // millis() a cui dovrà suonare il buzzer
    // isHornTime  = now>=HORN_PERIOD_ALARM_ON;       // millis() a cui dovrà suonare la sirena
    fPUMPSTATUS = !digitalRead(pumpState);  // logica inversa. PumpON->LowLevel
    switch(fPUMPSTATUS) {
        case ON:
            fHORN=ON;
            if (buzzer_OFF_time!=0) { // vuol dire che il Buzzer è attivo
                break;
            }
            if (isBeepTime || phase==0 ) { // phase=0 vogliamo un beep appena accesa la pompa
                previous_beep_time = now;
                led_period = LED_PERIOD_PUMP_ON;

                // emissione BEEP
                tone(Buzzer, FREQ, DURATION);
                buzzer_OFF_time = now+DURATION; // tempo (millsis()) a cui il buzzer si dovrà spegnere
                lnprint(fPrint_VERBOSE, "now: ", now, " - ");
                lnprint(fPrint_VERBOSE, "pump Status: ", fPUMPSTATUS, " - BEEPing - ");
                lnprint(fPrint_VERBOSE, "phase: ", phase, " - ");
                lnprint(fPrint_VERBOSE, "frequency: ", FREQ, " - ");
                lnprint(fPrint_VERBOSE, "duration: ", DURATION);
                setPhase(++phase);
            }
            checkHorn();
            break;

        default:   // tone to advice the pump is off (only if it was ON)
            if (phase>0) {
                Serial.print("pump has been turned off.");
                int _duration=300;

                // in questo caso blocco il programma con il delay()
                for (int i=0; i<=3; i++) {
                    tone(Buzzer, FREQ, _duration);
                    delay(_duration*1.3); // mandatory in quanto la funzione tone non è bloccante.
                }
                led_period = LED_PERIOD_DEFAULT; // reset LED interval
                setPhase(0); // reset Buzzer data
                Serial.println(" - power-off beep completed.");
            }
            fALARM=OFF;
            fHORN=OFF;
            break;
    }

}



// ==================================
// -
// ==================================
void setPhase(int count) {
    phase=count;
    if (phase>nPhases)  {
        phase=nPhases;
        fALARM=ON; // si spegnerà solo quando la pompa verrà spenta da qualcuno... oppure la spegnamo noi
    }

    if (fALARM) {
        DELAY    = 1;  // secondi
        FREQ     = 2000;    //mS
        DURATION = 500;    //ms
        VOLUME   = 9;
        led_period = LED_PERIOD_ALARM;
        Serial.println("Siamo in ALLARME!!!!");
        // lnprint(fPrint_HORN, "horn_ON_time: ", horn_ON_time);
        // lnprint(fPrint_HORN, "horn_OFF_time: ", horn_OFF_time);
    }
    else {
        int index=phase*4;

        DELAY    = BEEP[index];
        FREQ     = BEEP[index+1];
        DURATION = BEEP[index+2];
        VOLUME   = BEEP[index+3];

        if (phase==0) {
            led_period = LED_PERIOD_DEFAULT; // reset LED interval
            noTone(Buzzer);
            buzzer_OFF_time=0;
        }
    }


    buzzer_ON_time = now + (unsigned long) DELAY*1000;
    if (fPUMPSTATUS) {
        lnprint(fPrint_VERBOSE, "next BEEP, if pump still ON, in: ", DELAY, " Sec - ");
        lnprint(fPrint_VERBOSE, "(at: ", buzzer_ON_time, " mS)\n");
    }
}



void lnprint(bool fPrint, char *msg, unsigned long value, const char *s2) {
    if (fPrint) {
        Serial.print(msg);
        if (value!=SKIP_PRINT_VALUE) Serial.print(value);
        Serial.print(s2);
    }
}



