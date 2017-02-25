unsigned long tm;
unsigned long tu;
unsigned long blink_t;
unsigned long step_t;

//DRV8825 pins
#define DRV8825_STEP 2
#define DRV8825_MODE0 3 
#define DRV8825_MODE1 4
#define DRV8825_MODE2 5
#define DRV8825_ENABLE 6

//A4983 pins
#define A4983_STEP 7
#define A4983_MODE0 3 //Same as DRV8825
#define A4983_MODE1 4 //Same as DRV8825
#define A4983_MODE2 5 //Same as DRV8825
#define A4983_ENABLE 8

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);

  //DRV8825 pin config
  pinMode(DRV8825_STEP, OUTPUT);
  pinMode(DRV8825_MODE0, OUTPUT);
  pinMode(DRV8825_MODE1, OUTPUT);
  pinMode(DRV8825_MODE2, OUTPUT);
  pinMode(DRV8825_ENABLE, OUTPUT);

  //DRV8825 pin config
  pinMode(A4983_STEP, OUTPUT);
  pinMode(A4983_ENABLE, OUTPUT);

  digitalWrite(DRV8825_STEP, LOW);
  digitalWrite(DRV8825_MODE0, LOW);
  digitalWrite(DRV8825_MODE1, LOW);
  digitalWrite(DRV8825_MODE2, LOW);
  digitalWrite(DRV8825_ENABLE, HIGH);
  digitalWrite(A4983_STEP, LOW);
  digitalWrite(A4983_ENABLE, HIGH);

  //Timer variables for steps
  blink_t = millis();
  step_t = micros();
  tu = micros();
  tm = millis();
}


uint16_t step_count = 0;
uint8_t mode = 0;
uint8_t mode_div = 1;
uint16_t step_wait = 1000;
void loop() {
  tm = millis();
  tu = micros();
  
  if(Serial.available()) {
    Serial.write(Serial.read());
  }

#if 0
  //DRV8825
  //One revolution, then wait one cycle
  if (tu - step_t > step_wait) {
    //One fullstep lap (two toggles per step)
    if (step_count > mode_div*400) {
      digitalWrite(DRV8825_ENABLE, !digitalRead(DRV8825_ENABLE));
      step_count = 0;

      if (digitalRead(DRV8825_ENABLE) == LOW) {
        //Change step mode
        if (mode == 5) mode = 0;
        else mode += 1;
  
        if (mode == 0) {
          digitalWrite(DRV8825_MODE0, LOW);
          digitalWrite(DRV8825_MODE1, LOW);
          digitalWrite(DRV8825_MODE2, LOW);
          mode_div = 1;
          step_wait = 1000;
        } else if (mode == 1) {
          digitalWrite(DRV8825_MODE0, HIGH);
          digitalWrite(DRV8825_MODE1, LOW);
          digitalWrite(DRV8825_MODE2, LOW);
          mode_div = 2;
          step_wait = 500;
        } else if (mode == 2) {
          digitalWrite(DRV8825_MODE0, LOW);
          digitalWrite(DRV8825_MODE1, HIGH);
          digitalWrite(DRV8825_MODE2, LOW);
          mode_div = 4;
          step_wait = 250;
        } else if (mode == 3) {
          digitalWrite(DRV8825_MODE0, HIGH);
          digitalWrite(DRV8825_MODE1, HIGH);
          digitalWrite(DRV8825_MODE2, LOW);
          mode_div = 8;
          step_wait = 125;
        } else if (mode == 4) {
          digitalWrite(DRV8825_MODE0, LOW);
          digitalWrite(DRV8825_MODE1, LOW);
          digitalWrite(DRV8825_MODE2, HIGH);
          mode_div = 16;
          step_wait = 62;
        } else {
          digitalWrite(DRV8825_MODE0, HIGH);
          digitalWrite(DRV8825_MODE1, LOW);
          digitalWrite(DRV8825_MODE2, HIGH);
          mode_div = 32;
          step_wait = 32;
        }
      }
    }
    
    if (digitalRead(DRV8825_ENABLE) == LOW) {
      digitalWrite(DRV8825_STEP, !digitalRead(DRV8825_STEP));
    }
    step_count += 1;
    step_t = tu;
  }
#endif



#if 1
  //A4983
  //One revolution, then wait one cycle
  if (tu - step_t > step_wait) {
    //One fullstep lap (two toggles per step)
    if (step_count > mode_div*400) {
      digitalWrite(A4983_ENABLE, !digitalRead(A4983_ENABLE));
      step_count = 0;

      if (digitalRead(A4983_ENABLE) == LOW) {
        //Change step mode
        if (mode == 4) mode = 0;
        else mode += 1;
  
        if (mode == 0) {
          digitalWrite(A4983_MODE0, LOW);
          digitalWrite(A4983_MODE1, LOW);
          digitalWrite(A4983_MODE2, LOW);
          mode_div = 1;
          step_wait = 1000;
        } else if (mode == 1) {
          digitalWrite(A4983_MODE0, HIGH);
          digitalWrite(A4983_MODE1, LOW);
          digitalWrite(A4983_MODE2, LOW);
          mode_div = 2;
          step_wait = 500;
        } else if (mode == 2) {
          digitalWrite(A4983_MODE0, LOW);
          digitalWrite(A4983_MODE1, HIGH);
          digitalWrite(A4983_MODE2, LOW);
          mode_div = 4;
          step_wait = 250;
        } else if (mode == 3) {
          digitalWrite(A4983_MODE0, HIGH);
          digitalWrite(A4983_MODE1, HIGH);
          digitalWrite(A4983_MODE2, LOW);
          mode_div = 8;
          step_wait = 125;
        } else {
          digitalWrite(A4983_MODE0, HIGH);
          digitalWrite(A4983_MODE1, HIGH);
          digitalWrite(A4983_MODE2, HIGH);
          mode_div = 16;
          step_wait = 62;
        }
      }
    }
    
    if (digitalRead(A4983_ENABLE) == LOW) {
      digitalWrite(A4983_STEP, !digitalRead(A4983_STEP));
    }
    step_count += 1;
    step_t = tu;
  }
#endif

  //Blink every second
  if (tm - blink_t > 1000) {
    digitalWrite(13, !digitalRead(13));
    blink_t = tm;
  }
}
