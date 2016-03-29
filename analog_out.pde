//arduino have 5 PWM pins that are: 3, 5, 6, 9, 10, 11 (these are marked with "~" sign on Aruino Board
//the pwm pin and give a voltage between 0 to 5V according to the value(0,255) we give
//0 corresponds to 0V and 255 corresponds 5V ,
//any vaue in between can be obtained following linear relationship

int outPin=11;

void setup()
{
    pinMode(outPin,OUTPUT);
    analogWrite(outPin,200);    // output = (5/255)*200 = 3.92V
}

void loop()
{
  
}

//this program sets the output to a particuar value
