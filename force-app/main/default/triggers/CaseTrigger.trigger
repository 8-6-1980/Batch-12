trigger CaseTrigger on Case(before update) {
if(trigger.isUpdate){
    system.debug('Before update trigger run');
    CaseTriggerHandler.countTriggerExecution++;
    system.debug('# of times trigger run-> '+ CaseTriggerHandler.countTriggerExecution);

    CaseTriggerHandler.countRecordsUpdated += trigger.size;
    system.debug('# of total records updated=> '+ CaseTriggerHandler.countRecordsUpdated);
}
}