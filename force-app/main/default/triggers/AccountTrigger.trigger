trigger AccountTrigger on Account (before insert, after insert, before update,after update) {
    list<account> accTriggerNew = trigger.new;
    if(trigger.isBefore && Trigger.isInsert){
        system.debug('record in before insert: '+ accTriggerNew);
        system.debug('before # of records inserted: '+ accTriggerNew.size());
        for(account eachAcc: accTriggerNew){
            system.debug(' before acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
        }
    }
    if(trigger.isAfter && Trigger.isInsert){
        system.debug('record in after insert: '+ accTriggerNew);
        system.debug('# of records inserted: '+ accTriggerNew.size());
        for(account eachAcc: accTriggerNew){
            system.debug('acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
        }
    }

   if(trigger.isBefore && Trigger.isUpdate){
        system.debug('record in before update: '+ accTriggerNew);
        system.debug('before # of records updated: '+ accTriggerNew.size());
        for(account eachAcc: accTriggerNew){
            system.debug(' before acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
        }
    }

    if(trigger.isAfter && Trigger.isUpdate){
        system.debug('record in afterupdate: '+ accTriggerNew);
        system.debug('# of records updated: '+ accTriggerNew.size());
        for(account eachAcc: accTriggerNew){
            system.debug('acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
        }
    }
    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('before insert trigger called. yeah. ');
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     system.debug('after insert trigger called too. ooh yeaah..');
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('before  updatetrigger called. yeah. ');
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('after update trigger called too. ooh yeaah..');
    // }
    
    
   
    // if(Trigger.isBefore){
    //     system.debug('account before insert trigger called');

    // }
    // if (Trigger.isAfter) {
    //     system.debug('account after insert trigger called');
        
    // }
}