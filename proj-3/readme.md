
* Arduino support both Timer interrupt and Hardware(aka external) interrupt 

* Increasing the number of Interrupt pins:
  - Arduino uno have only 2 interrupt pins(that is pin2 and pin3), but we can increase the interrupt pins by using the library `#include "PinChangeInterrutp.h"` , now all the 20 pins of uno (0 tO 13,A0 to A5) can be used as interrupt(external) pins.
  - All the interrupt would have some name , that is different from the regular name of pins that cah be seen from the table [PCINT pin table](https://github.com/NicoHood/PinChangeInterrupt/#pinchangeinterrupt-table) or rather then thiswe can use `digitalPinToPinChangeInterrupt(<regular-name-of-pin>)` method to retrive the interrupt name of pin from its regular name.
  - And now the new interrupt pins can be used just as the regular ones (pin2 and pin3). 
