//penerima(arduino mega)
#include <SoftwareSerial.h>

SoftwareSerial mySerial(10, 11); // RX, TX

void setup() {
  Serial.begin(9600);
  mySerial.begin(9600);
}

void loop() {
  int distance = mySerial.read();
  Serial.print("Ketinggian Air = ");
  Serial.print(distance);
  Serial.print("cm dari SET POINT");
  if (distance < 20) {
    Serial.println(", Palang Irigasi Tertutup");
  }
  else {
    Serial.println(", Palang Irigasi Terbuka");
  }
  delay (2000);
  Serial.println();
}
