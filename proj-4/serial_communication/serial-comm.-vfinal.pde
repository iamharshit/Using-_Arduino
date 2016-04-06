// ***** In Arduino IDE*****

potPin=A0;

void setup()
{
    Serial.begin(9600)
}

void loop()
{
    int value = map(analogRead(potPin), 0, 1023, 0, 255);
    Serial.println(value);
    delay(50);
}


// *****In Processing IDE*****
//(to get input from serial comm. and then control the color on our window)

import processing.serial.*
Serial port;
float brightness=0;

void setup()
{
    size(500,500);
    port=new Serial(this,"COM3",9600);
    port.bufferUntil('\n';)
}

void draw()
{
    background(0,0,brightness);
}

void serialEvent(Serial port)
{
    brightness=float(port.readStringUntil('\n'));
}
