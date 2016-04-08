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


//Note : Use `Serial.print(<text>)` if u wanna print in the same line
//       and `Serial.println(<text>)` if u wanna print in new line.
