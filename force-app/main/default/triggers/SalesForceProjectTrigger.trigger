trigger SalesForceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update) {
 SalesForceProjectHandler.SPStatusComplated(Trigger.new, Trigger.Old, Trigger.NewMap, Trigger.OldMap);


 

    if(trigger.isAfter && trigger.isInsert){
        SalesForceProjectHandler.createDefaultTicket(trigger.new);
    }


    if(trigger.isBefore && trigger.isUpdate) {
        //do the completion valdiation
        SalesforceProjectHandler.validateSPComplete(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}
