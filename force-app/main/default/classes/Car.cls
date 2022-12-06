public  class Car {
    public string carColor ='';
    public string carName='';
     private integer maxSpeed =150;
    // if we dont write acsess modifier default is privite.

    public void switchOn(){
        Datetime switchOnTime = Datetime.now();
        system.debug('starting the car');
    }
    public void drive(){
        system.debug('driving '+carName+ ', color is ' + carColor);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription ='Driving ' + carName + ' at' + maxSpeed + ' km/h';
        system.debug(drivingDescription);
    }
 }

