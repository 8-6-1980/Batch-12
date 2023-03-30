public with sharing class EmployeeCtrl {
    @AuraEnabled(cacheable=true)
    public static list <Employee__c> getTopEmployees(){
        return [ SELECT Name, Email__c, Designation__c, Username__c
        FROM Employee__c
        WITH SECURITY_ENFORCED
        ORDER BY CreatedDate ASC LIMIT 5];
    }

    @AuraEnabled
    public static List<Employee__c> searchEmployees(String searchKey) {
        searchKey = '%' + searchKey + '%';
        return [SELECT Employee_Name__c, Designation__c, Email__c
                FROM Employee__c
                WHERE Employee_Name__c LIKE :searchKey
                WITH SECURITY_ENFORCED];
    }
}