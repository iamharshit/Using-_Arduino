// we can use any of the 6 analog input pins (A0 to A5) for an analog input
// analog pin pf arduino have a 10bit resolution, meaning 0V correspods to 0 and 5V corresponds to 1023
// we can also set the analog reference by giving that voltage on the AREF pin (by default analog ref. =5)
// need not setup the analog pin as input since analog pins have only one functunality that is to take analog input

int inPin=A0;

void setup()
{

}

void loop()
{
    output = analogRead(inPin);
}

//output can be anywhere between 0 to 1023 
