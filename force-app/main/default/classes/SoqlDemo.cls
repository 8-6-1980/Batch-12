public class SoqlDemo {
    public static void accountSOQL_1() {
        //[ Query goes in here ] <- in square brackets.
        //it always return List<sObject>
        List<account> listAcc = [select id, name from account where name like '%a%'];
        system.debug('list of acc -> ' + listAcc);
    }

    public static void accountSOQL_11() {
        //if SOQL is returning JUST 1 record, we can use sObject for that.
        Account acc = [select id, name, phone from account order by createddate desc limit 1];
        system.debug('latest created account is ' + acc);
    }
    public static void accountSOQL_2() {
        //if SOQL is returning JUST 1 record, we can use sObject for that.
        Account acc = [select id, name, phone, accountNumber from account order by createddate desc limit 1];
        system.debug('latest created account is ' + acc);
        string accName = acc.Name;
        string accPhone= acc.Phone;
        system.debug(' acc name ='+ accName + ' and acc phone = '+accPhone+ ' and account number is '+ acc.AccountNumber);
    }

    public static void accountSOQL_3(){
        List<account> listAcc = [select id, name ,phone , accountNumber, ShippingCity from account order by createddate desc];
        system.debug( 'all accounts' + listAcc);
        for (Account eachAccount : listAcc) {
            string accName = eachAccount.Name;
            string accPhone= eachAccount.Phone;
            string accShippingCity =eachAccount.ShippingCity;
            system.debug(' acc name ='+ accName + ' and acc phone = '+accPhone+ ' and account number is '+ eachAccount.AccountNumber);
            system.debug(' shipping city is '+accShippingCity);
        }
    }

    public static void accountSOQL_filter(string accNameFilter){
        list<account> listAcc =[select id , name, phone from account where name= :accNameFilter];
        system.debug(' filtered account->'+ listAcc);
    }

    public static void accountSOQL_filter(list<string> accNames){
        list<account> listAcc =[select id , name, phone from account where name IN :accNames];
        system.debug(' filtered account->'+ listAcc);
        
    }


}