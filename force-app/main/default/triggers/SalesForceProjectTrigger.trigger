trigger SalesForceProjectTrigger on Salesforce_Project__c (before insert, after insert) {
    if(trigger.isAfter && trigger.isInsert){
        SalesForceProjectHandler.createDefaultTicket(trigger.new);
    }

}