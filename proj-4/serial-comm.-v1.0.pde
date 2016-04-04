void setup()
{
    Serial.begin(9600);            // sets up the baud rate
}

void loop()
{
    while(Serial.available == 0);
    
    int val=Serial.read() - '0';
    
    Serial.println(val);
}
