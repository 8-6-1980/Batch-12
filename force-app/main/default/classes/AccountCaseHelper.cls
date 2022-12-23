public  class AccountCaseHelper {
    @invocableMethod
        
       public static void updateTotalCaseCount(list<Id> listAccountId) {
        list<aggregateResult> caseAGR =[SELECT count(id) casesCount , accountid from case where accountid in :listAccountId group by accountid];
        list<account> updateAccounts = new list<account>();
        system.debug('cases AGR = '+caseAGR);
        for (aggregateResult agr: caseAGR) {
            integer countOfCases =Integer.valueOf(agr.get('casesCount'));
            Account acc = new account();
            acc.id =string.valueOf(agr.get(' accountid '));
            acc.Total_Case_Count__c	 = countOfCases;
            updateAccounts.add(acc);
        }
        update updateAccounts;
    }
}
