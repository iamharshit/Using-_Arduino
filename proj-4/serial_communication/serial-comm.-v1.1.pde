int ledPin=7;

void setup()
{
    pinMode(ledPin,OUTPUT);
    Serial.begin(9600);
}

void loop()
{
    while(Serial.available()==0);
    
    int val=Serial.read()-'0';
    if(val==1)
    {
        digitalWrite(ledPin,HIGH);
        Serial.println('LED made ON');
    }
    else if(val==0)
    {
        digitalWrite(ledPin,LOW);
        Serial.println('LED made OFF');
    }
    else
    {
        Serial.println('INVALID INPUT');
    }
    
    Serial.flush();
}

