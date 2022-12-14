trigger AccountAssignmentTrigger on Account (before insert, after insert, before update, after update) {
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

    }

