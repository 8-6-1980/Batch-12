public class Datetime_Assignment {
    public void diffofDate() {
        Date varTodaysDate =date.newInstance(2022, 11, 15);
        Date varTomarrowDate = date.newInstance(2022,11,16);
        integer diffOfDate1= varTodaysDate.daysBetween(varTomarrowDate);
        system.debug(' difference betwwen today and tomarrom is '+diffOfDate1);
    }
    public void Timecheck(){
        Datetime varTomarrowDateTime= Datetime.newInstance(2022, 11, 16, 7, 0, 0);
        system.debug('tomarrow date time==> '+varTomarrowDateTime);
        Datetime var10DaysDatetime= Datetime.newInstanceGmt(2022, 11, 25, 9, 0, 0);
        system.debug(' 10 days later date time==> '+ var10DaysDatetime);
        Long  varDatetimeLong= 12339874361l;
        Datetime longDate =datetime.newInstance(varDatetimeLong);
        system.debug(' long date time==> '+longDate);
        Datetime add7DaysTomarrow = varTomarrowDateTime.addDays(7);
        system.debug(' 7 days later from tomarrow==> '+ add7DaysTomarrow);
        Datetime add10DaysDate = var10DaysDatetime.addDays(10);
        system.debug('10 days after 10 days==>' + add10DaysDate);
    }
}