int sensor1 = 0;
int sensor2 = 150;
void setup() {
Serial.begin(9600);
}

void loop() {
sensor1 = analogRead(A0);
sensor2 = analogRead(A1);
Serial.print(sensor1);
Serial.print(";");
Serial.println(sensor2);
delay(1000);
}
