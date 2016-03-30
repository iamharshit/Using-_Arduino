// Arduino have a built in library for servo control which makes it a lot easier
// servo can go to any positio form 0 to 180
// Servo have 3 pins: 2 power pin (hooked to 0V and 5V on arduino) and 1 control Pin(hooked to PWM pin of arduino)

// Need To Know: <using Servo.h>


#include<Servo.h>
Servo myservo;

int servoPin=9;

void setup()
{
    //attaching myservo to servoPin
    //declaring servoPin as output(done automatically when attaching)
    myservo.attach(servoPin);    
}

void loop()
{
    for(int i=0;i<=180;i++){
          myservo.write(i);
          delay(1000);
    }
}
