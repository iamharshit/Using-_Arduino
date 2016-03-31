int transmitPin = 0;
int val;

void setup()
{
    Serial.begin(9600);
}

void loop()
{
    val=128;
    Serial.println(val);
    delay(2000);
    
    val=255;
    Serial.println(val);
    delay(2000);
}
