readPin=2;

void setup()
{
    Serial.begin(9600);
}

void loop()
{
    while(Serial.available() == 0)
    
    int data=Serial.read() - '0';
    
    analogWrite(readPin,data);
    
    Serial.flush();
}
