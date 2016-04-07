###i2c Communication


 * Each slave have a different ID(comes pre-configured) that need to be set(on master) before master starts communication with slave.
 * Communication happens on the SDA(Serial Data) line and can happen in both direction.
 * SCL(Serial Clock) Line just control at what rate data is sent(or recieved) because each device(master or slave) sent data only when the SCL is high.
 * The i2c lines are default pulled up using the 2 resistors.Its active low meaning the device becomes active when it is low.
 * On Arduino SDL is at A4 and SCL is at A5.

<img src="http://www1.coocox.org/images/COX/I2C_Mastet.PNG"> 
