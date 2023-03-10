public with sharing class OpportunityCtrl {
    @AuraEnabled(cacheable=true) 
    public static List<Opportunity> getTopOpportunities(string stage){
        return [Select Name , Type , Amount, CloseDate from Opportunity where StageName =:stage and Amount !=null with SECURITY_ENFORCED order by Amount desc limit 5];
    }
}