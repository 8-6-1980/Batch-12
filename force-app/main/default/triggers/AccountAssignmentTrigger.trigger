trigger AccountAssignmentTrigger on Account (before insert, after insert, before update, after update) {

    if(trigger.isAfter && trigger.isUpdate){
AccAssignmentTriggerHandler.UpdateBillingCity(trigger.new, trigger.old, trigger.newMap, trigger.OldMap);



    }
    if(trigger.isBefore){
        if(trigger.isInsert){
            for (Account eachAcc: trigger.new) {
                system.debug('before insert trigger :'+eachAcc.Name+' - ' + eachAcc.Rating+' - ' +  eachAcc.Description+' - '+ eachAcc.ShippingCity);
                
            }
        }
        if (trigger.isUpdate) {
            for (Account eachAcc: trigger.new) {
                system.debug('before update trigger :'+eachAcc.Name+' - ' + eachAcc.Rating+' - ' +  eachAcc.Description+' - '+ eachAcc.ShippingCity);
                
                
            }
        }
    }
    if(trigger.isAfter){
        if(trigger.isInsert){
            for (Account eachAcc: trigger.new) {
                system.debug('after insert trigger :'+eachAcc.Name+' - ' + eachAcc.Rating+' - ' +  eachAcc.Description+' - '+ eachAcc.ShippingCity);
                
            }
        }
        if (trigger.isUpdate) {
            for (Account eachAcc: trigger.new) {
                system.debug('after update trigger :'+eachAcc.Name+' - ' + eachAcc.Rating+' - ' +  eachAcc.Description+' - '+ eachAcc.ShippingCity);
                
                
            }
        }
    }
    if(trigger.isBefore){
        for(account eachAcc: trigger.new){
            if(trigger.isInsert){
                if(eachAcc.Active__c=='Yes'){
                   eachAcc.Description='Account is active';
                }
                if(eachAcc.Active__c=='No'){
                    eachAcc.Description ='Account is inactive';
                }
        }
        if(trigger.isUpdate){

            if(eachAcc.Active__c=='Yes'){
                eachAcc.Description='Account is active';
             }
             if(eachAcc.Active__c=='No'){
                 eachAcc.Description ='Account is inactive';
             }
        }
        
            
        }
    }
    if(trigger.isBefore && trigger.isInsert){
        system.debug('We are in trigger new list..'+trigger.new);
        system.debug('we are in trigger old list..'+trigger.old);
        system.debug('We are in trigger newMap list..'+ trigger.newMap);
        system.debug('we are in trigger oldMap list..'+trigger.oldMap);
        if(trigger.newMap!= null){
            for(id eachId: trigger.newMap.keySet()){
                system.debug('new account name: '+trigger.newMap.get(eachId).Name);
            }

        }

    }
    if(trigger.isBefore && trigger.isUpdate){
        system.debug('We are in trigger new list..'+trigger.new);
        system.debug('we are in trigger old list..'+trigger.old);
        system.debug('We are in trigger newMap list..'+ trigger.newMap);
        system.debug('we are in trigger oldMap list..'+trigger.oldMap);
       
            for(id eachId: trigger.newMap.keySet()){
                system.debug('new account name: '+trigger.newMap.get(eachId).Name);

        }
            for(id eachId: trigger.oldMap.keySet()){
                system.debug('old account name: '+trigger.oldMap.get(eachId).Name);
            
        }
    }
    if(trigger.isAfter){
        if(trigger.isInsert){
        system.debug('We are in trigger new list..'+trigger.new);
        system.debug('we are in trigger old list..'+trigger.old);
        system.debug('We are in trigger newMap list..'+ trigger.newMap);
        system.debug('we are in trigger oldMap list..'+trigger.oldMap);
       
          if(trigger.newMap!= null){
            for(id eachId: trigger.newMap.keySet()){
                system.debug('new account record: '+trigger.newMap.get(eachId));
            }

          }
        }
        if(trigger.isUpdate){
            system.debug('We are in trigger new list..'+trigger.new);
            system.debug('we are in trigger old list..'+trigger.old);
            system.debug('We are in trigger newMap list..'+ trigger.newMap);
            system.debug('we are in trigger oldMap list..'+trigger.oldMap);
            for(id eachId: trigger.newMap.keySet()){
                system.debug('new account record: '+trigger.newMap.get(eachId));
            }
            for(id eachId: trigger.OldMap.keySet()){
                system.debug('old account record: '+trigger.newMap.get(eachId));
            }

        }
    }

    }

