//float sensor1 = analogRead(A0);
float sensor1 = 50;
float sensor2 = 0;
void setup() {
Serial.begin(9600);
}

void loop() {
sensor2 = sensor1 + 100;
Serial.println(sensor1);
Serial.println(sensor2);
delay(1000);
}
