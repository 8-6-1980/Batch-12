public  class PrimitiveDataTypeDemo2 {
    public  void printNewDate() {
        system.debug('create new date instance');
        Date newDate =Date.newInstance(1980, 6,8);
        system.debug('my birthday is '+ newDate);
        Date newDate2 = Date.newInstance(2022, 11, 11);
        system.debug('Todays date is '+newDate2);

     Date todayDate= date.today();
     system.debug('today?\'s date ' +todayDate);

    }
    public void printNewTime(){
        Time myTime = Time.newInstance(2,15,45,55);
        system.debug(' my time is '+ myTime);
     
    }
    public void printNewDateTime(){
        Date newDate= date.today();
        Time newTime =Time.newInstance(2,15,45,55);
        Datetime dt1= Datetime.newInstance(newDate,newTime);
        system.debug('dt1 is '+dt1);

        Datetime dt2=Datetime.newInstance(2001,4,14);
        system.debug('dt2 is '+dt2);
    }
}
