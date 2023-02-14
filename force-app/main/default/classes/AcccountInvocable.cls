public with sharing class AcccountInvocable {
    @InvocableMethod(label='Close Opportunities'
    description='This method is going to update the stagename of all OPEN opportunities under the given account to closed lost'
    category='Account')

    public static void closeOpportunities(list<id> accountIds){
        // query to get all the opps under the given accounts
        List<Opportunity> opps =[select id, stageName from Opportunity where AccountId IN :accountIds and stageName NOT IN ('Closed Won','Closed Lost')];
        for(Opportunity opp: opps){
          opp.StageName = 'Closed Lost';
        }
        if(!opps.isEmpty()){
            try {
                update opps;
                
            } catch (Exception ex) {
                // create a log
                
            }
           
        }
       
    }
}