// there are 4 kinds of external interrupt that Arduino supports that includes:
// LOW, CHANGE, RISING, FALLING (generally RISING and FALLING are used)

int red_ledPin=9;
int green_ledPin=10;
int yellow_ledPin=11;
int null_ledPin=12;

int buttonPin=INT0;         //an interrupt pin

int distPin=A0;

volatile int selected_ledPin = red_ledPin;

void setup()
{
    pinMode(red_ledPin, OUTPUT);
    pinMode(green_ledPin, OUTPUT);
    pinMode(yellow_ledPin, OUTPUT);
    
    //distPin is default declared as input
    
    attachInterrupt(buttonPin, swap, RISING);
}

void swap()
{
    if (selected_ledPin == red_ledPin)
        selected_ledPin = green_ledPin;
    else if (selected_ledPin == green_ledPin)
        selected_ledPin = blue_ledPin;
    else if (selected_ledPin = blue_ledPin)
        selected_ledPin = null_ledPin;
    else
        selected_ledPin = red_ledPin;
}

void loop()
{
      int dist = analogRead(distPin);
      int brightness = map(dist,0,1023,0,255);
      
      analogWrite(selected_ledPin, brightness);
}
