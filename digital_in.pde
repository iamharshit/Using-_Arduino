// any of the digital pins 0-19 can be used for a digital input

int inPin=13;
int state;

void setup()
{
    pinMode(inPin,INPUT);
}

void loop()
{
    state = digitalRead(inPin);
    delay(500);
}

// state can be 0 or 1 
