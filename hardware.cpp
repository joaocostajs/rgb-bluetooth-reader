#include <SoftwareSerial.h>

#define but 5
#define pot A0

SoftwareSerial BTSerial(0, 1);

int converter(int potVal) {
  int rgb;
  rgb = map(potVal, 0, 1024, 0, 255);
  return rgb;
}

void setup() {
  Serial.begin(9600);
  BTSerial.begin(9600);


  pinMode(but, INPUT);
  pinMode(pot, INPUT);
}

void loop() {
  int butState = digitalRead(but);
  int potVal = analogRead(pot);



  Serial.print("Button Switch State: "); Serial.println(butState);
  Serial.print("Pot Value"); Serial.println(converter(potVal));
  Serial.write(butState);
  Serial.write(converter(potVal));
  delay(10);


}
