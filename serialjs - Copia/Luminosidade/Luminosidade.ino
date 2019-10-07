int sensor1 = 100;
int sensor2 = 150;
void setup() {
Serial.begin(9600);
}

void loop() {
Serial.print(sensor1);
Serial.print(";");
Serial.println(sensor2);
delay(1000);
}
