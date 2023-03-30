public with sharing class OpportunityCtrl {
    @AuraEnabled(cacheable=true) 
    public static List<Opportunity> getTopOpportunities(string stage){
        return [Select Name , Type , Amount, CloseDate from Opportunity where StageName =:stage and Amount !=null with SECURITY_ENFORCED order by Amount desc limit 5];
    }
    
    @AuraEnabled(cacheable=true) 
    public static List<Opportunity> getOpportunitiesByStage(string stage){
        return [Select Name , Type , Amount 
                from Opportunity 
                where StageName =:stage  
                with SECURITY_ENFORCED  
                limit 10];
    }
    
}