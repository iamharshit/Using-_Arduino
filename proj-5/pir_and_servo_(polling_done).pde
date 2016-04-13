#include<Servo.h>

Servo myServo;
int servoPin=9;

int pirPin[]={};
int pirAngle[]={18,54,90,126,162};
int pirPrevState[]={0,0,0,0,0};

void setup()
{
  myServo.attach(servoPin);
  for(int i=0;i<5;i++) 
      pinMode(pirPin[i],INPUT);
  //calibration of PIR sensors
  delay(15000);
}

void loop()
{
  for(int i=0;i<5;i++){
      if(digitalRead(pirPin[i])==HIGH){
          if(pirPrevState[i]==0){
              myServo.write(pirAngle[i]);
              delay(50);
              pirPrevState[i]=1;
          }
      }
      else{
        pirPrevState[i]=0;
      }
  }
}
