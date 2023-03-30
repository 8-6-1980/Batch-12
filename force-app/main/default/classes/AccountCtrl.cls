public with sharing class AccountCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts(){
          return [select Name, Type, Industry, AnnualRevenue from Account where AnnualRevenue !=null  with SECURITY_ENFORCED ORDER BY AnnualRevenue DESC limit 10];
    }

    @AuraEnabled 
    public static List<Account> getAccountsByIndustry(String industry) {
        return [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE Industry = :industry
                WITH SECURITY_ENFORCED
                ORDER BY AnnualRevenue DESC];
    }
        
}