public with sharing class EmployeeCtrl {
    @AuraEnabled(cacheable=true)
    public static list <Employee__c> getTopEmployees(){
        return [ SELECT Name, Email__c, Designation__c, Username__c
        FROM Employee__c
        WITH SECURITY_ENFORCED
        ORDER BY CreatedDate ASC LIMIT 5];
}
}