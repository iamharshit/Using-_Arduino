//printing the data from Arduino on our laptop

void setup()
{
    Serial.begin(9600);
}

void loop()
{
    Serial.println(<what has to be printed>);
    delay(500);
}
