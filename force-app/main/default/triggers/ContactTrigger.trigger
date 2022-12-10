trigger ContactTrigger on Contact (before insert, after insert, before update,after update) {

    if(Trigger.isBefore){
        system.debug('we are in BEFORE trigger');
        if(Trigger.isInsert){
            system.debug('before insert trigger called');
        }
        if(Trigger.isUpdate){
            system.debug('before update trigger called');
        }
    }
    if(Trigger.isAfter){
        system.debug('we are in AFTER trigger');
        if(Trigger.isInsert){
            system.debug('after insert trigger called');
        }
        if(Trigger.isUpdate){
            system.debug('after update trigger called');
        }
      
    }

    }
    