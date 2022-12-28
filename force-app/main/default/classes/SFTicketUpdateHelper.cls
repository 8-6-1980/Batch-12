public class SFTicketUpdateHelper {
    @invocableMethod
    
    public static void UpdateSFTicketStatus(list<id> pIds) {
        list< Salesforce_Ticket__c> sfTicket =[select id, status__c from Salesforce_Ticket__c where Salesforce_Project__c in:pIds];
        List<Salesforce_Ticket__c> updatedTicket = new  List<Salesforce_Ticket__c> ();
        for(Salesforce_Ticket__c eachTicket: sfTicket){
            eachTicket.Status__c ='Complated';
            updatedTicket.add(eachTicket);
        }

        update updatedTicket;
    }
}
