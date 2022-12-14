trigger ContactAssignmentTrigger on Contact (before insert, before update) {
 if(trigger.isBefore){
    if (trigger.isInsert) {
        for (contact eachCon : trigger.new) {
            system.debug('contact before insert trigger-->'+eachCon.LastName + ' - '+ eachCon.AccountId+ ' - '+eachCon.Phone+ ' - '+ eachCon.Email);
        }
    }
    if(trigger.isUpdate){
        for (contact eachCon : trigger.new) {
            system.debug('contact before update trigger-->'+eachCon.LastName + ' - '+ eachCon.AccountId+ ' - '+eachCon.Phone+ ' - '+ eachCon.Email);
        }
    }
 }
}