// any of the digital pins 0-19 can be used for a digital output
// the digital output of arduino can be LOW (meaning 0V) or HIGH(meaning 5V)

int outPin=13;

void setup()
{
    pinMode(outPin,OUTPUT);
}

void loop()
{
    digitalWrite(outPin,HIGH);
    delay(1000);
}
