public class SalesForceProjectHandler {
   public static void createDefaultTicket(List<Salesforce_Project__c> spTriggerNew) {
    List<Salesforce_Ticket__c> newStList =new  List<Salesforce_Ticket__c> ();
    for(Salesforce_Project__c eachSp :spTriggerNew ){
        Salesforce_Ticket__c st =new  Salesforce_Ticket__c ();
        st.Subject__c ='Default ST';
        st.Salesforce_Project__c =eachSp.id;
        newStList.add(st);
    }
    if(!newStList.isEmpty()){
        insert newStList;
    }
   }
}
