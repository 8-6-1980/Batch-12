public  class Calculator {
    public static void welcomeMessage(){
        system.debug('welcome to apex calc.');
    }

    public static void printNewMessage( string msg){
        system.debug(msg);
    }

    
   public string  printAndReturnMsg( string msg2){
    system.debug(msg2);
    string returnStr = msg2+ ' ... Ok cool';
    return returnStr;
   } 

   public integer add( integer a, integer b){
    integer sum =a+b;
    return sum;
   }

   public  integer add( integer a , integer b, integer c){
    integer sum = a+b+c;
    return sum;
   }

   public boolean checkLeapYear ( date dt){
    integer year =dt.year();
    boolean lp =date.isLeapYear( year);
    return lp;
   }
}
