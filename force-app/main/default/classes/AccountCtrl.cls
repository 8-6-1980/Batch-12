public with sharing class AccountCtrl {
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts(){
          return [select Name, Type, Industry, AnnualRevenue from Account where AnnualRevenue !=null  with SECURITY_ENFORCED ORDER BY AnnualRevenue DESC limit 10];
    }
        
}