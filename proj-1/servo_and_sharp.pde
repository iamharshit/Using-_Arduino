# Controlling servo based on Sharp reading
# Sharp gives an analog output rom 0V to  5V

#include<Servo.h>

int servoPin=9;
int distPin=A0;

Servo myservo;

void setup()
{
    myservo.attach(sevoPin);
}

void loop()
{
    int dist = analogRead(servoPin);
    int output = map(val, 0, 1023, 0, 180);
    
    myservo.write(output);
}
