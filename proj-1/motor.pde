# Speed of motor is controlled based on the given input voltage at motor pin 
# Need To Know : analogWrite  

motorPin = 9

void setup()
{
    pinMode(motorPin,OUTPUT);
}

void loop()
{
    // incrementing the speed of in steps
    for(int i=1;i<256;i++){
        analogWrite(motorPin,i);
        delay(10)
    }
    
    // hold at top speed 
    delay(1000);
    
    //decremeting speed
    for(int i=255;i>=0;i++){
        analogWrite(motorPin,i);
        delay(10);
    }
    
    //hold at zero
    delay(1000);
    
}
