public  class DateTimeMethodsDemo {
    public void calculateAgeInMonth() {
        date birthDate =date.newInstance(1980,6,8);
        date todaydate = date.today();
        integer ageInMonths =birthDate.monthsBetween(todaydate);
    system.debug( 'my age in month' +ageInMonths);
    }
    public void calculateAgeInDays(){
        date birthDate =date.newInstance(1980,6,8);
        date todaydate = date.today();
        integer ageInDays= birthDate.daysBetween(todaydate);
        system.debug('my age in days is '+ageInDays);

    }
    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(10000);
        system.debug(' subscription end date = '+subscriptionEndDate);
        integer endDateMonth = subscriptionEndDate.month();
        system.debug(' subscription end date month is ' +endDateMonth);
        date pastSubscriptionDate = subscriptionStartDate.addDays(-999);
        system.debug('if subscription ended today, then it started on ' + pastSubscriptionDate);

        integer endDateYear = subscriptionEndDate.year();
        system.debug('end date year is '+ endDateYear);

        

    }
    public void printOfferEndDateTime(){
        datetime dtNow= datetime.now();
        datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer will end on: ' + dtOfferEnd);
        date offerEndDate = dtOfferEnd.date();
        system.debug (' offer end date is ' + offerEndDate);
    }
    public void birthDateInMilliSeconds(){
        Datetime birthTime = datetime.newInstance ( 1980, 6,8, 7,30,45);
         long longBirthDate = birthTime.getTime();
         system.debug( 'my birthdate in long (millisecond) is '+ longBirthDate);
    }
}
