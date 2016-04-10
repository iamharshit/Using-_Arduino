###Obstacle Detection within 180(degree) range
* Obstacle is detected using 5 pir motion sensors which together covers 180(degree) field of view.(assuming each pir itself have a field of view of 35(degree))
* Polling(a.k.a checking in loop) is done to check the obstacle lies in field of view of which particular pir sensor.
* After detecting output of which pir sensor is high servo is rotated by the corresponding angle so that the pointer mounted on servo points in that direction.

 
