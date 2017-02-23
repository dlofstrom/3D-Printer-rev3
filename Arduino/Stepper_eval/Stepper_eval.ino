unsigned long tic;
unsigned long toc;

void setup() {
  Serial.begin(9600);
  // initialize digital pin 13 as an output.
  pinMode(13, OUTPUT);

  tic = millis();
  toc = millis();
}

void loop() {
  toc = millis();
  
  if(Serial.available()) {
    Serial.write(Serial.read());
  }


  if (toc - tic > 1000) {
    digitalWrite(13, !digitalRead(13));
    tic = toc;
  }
}
