trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    if(trigger.isAfter&& trigger.isUpdate){
        AccountTriggerHandler.updateVIPForAllContacts(trigger.new ,trigger.old, trigger.newMap, trigger.oldMap);
    }

if(trigger.isAfter && trigger.isInsert){
    AccountQueueableExample aq = new AccountQueueableExample(trigger.new);
id jobId = system.enqueueJob(aq);
}


    if (Trigger.isBefore ) {
        // AccountTriggerHandler.updateAccountDescription(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        if(trigger.isInsert){
            try{
                List<Contact> conList = new  List<Contact> ();
                for(account acc: trigger.new){
                    contact c = new contact();
                    c.LastName = acc.Account
                }
            }
        }
    }

// if(trigger.isBefore){
//  system.debug('before insert/update trigger on account object');
//  for(account eachAcc: trigger.new){
//     if(trigger.isInsert&& eachAcc.Active__c=='Yes'){
//         eachAcc.Description ='Account now active.enjoy!  ';
//     }
//     if(trigger.isUpdate){
//         if(eachAcc.Active__c =='Yes' && trigger.oldMap.get(eachAcc.id).Active__c !=trigger.newMap.get(eachAcc.id).Active__c ){
//             eachAcc.Description = 'Account is now active. Enjoy guys..';
//         }
//     }
//  }
// }




        // List<Account> accTriggerNew = Trigger.new;
        // List<Account> accTriggerOld = Trigger.old;
        // map<Id, Account> accTriggerNewMap = trigger.newMap; 
        // map<Id, Account> accTriggerOldMap = trigger.oldMap; 
    
        // if (Trigger.isAfter && Trigger.isUpdate){
        //     Set<Id> accIds = accTriggerNewMap.keySet();
        //     Integer countOfWebsiteUpdate = 0;
            
        //     for (Id eachId : accIds){
        //         String newWebsite = accTriggerNewMap.get(eachId).Website;
        //         String oldWebSite = accTriggerOldMap.get(eachId).Website;
        //         Account newAcc = accTriggerNewMap.get(eachId);
    
        //         If(oldWebsite != newWebsite){
        //             System.debug('For the account '+newAcc.Name+', the new website is  '+newAcc.Website);
        //             countOfWebsiteUpdate++;
        //         }
    
        //     }
        //     System.debug('Number of account websites updated ->' + countOfWebsiteUpdate);
    
        // }
 



    // List<account> accTriggerNew = trigger.new;
    // List<account> accTriggerOld = trigger.old;
    // Map<id, account> accTriggerNewMap = trigger.newmap;
    // Map<id, account> accTriggerOldMap = trigger.oldMap;
    // //keys means ids of newMap and oldMap are SAME (update)


    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     Set<id> accIds = accTriggerNewMap.keySet();
    //     //for each loop of set of ids
    //         //get value of new account using ID from newMap
    //         //get value of old account using ID from oldMap
    //     for (Id eachId : accIds) {
    //         system.debug('eachId -> ' + eachId);

    //         account newAccount = accTriggerNewMap.get(eachId);
    //         system.debug('newAccount name -> ' + newAccount.Name);

    //         account oldAccount = accTriggerOldMap.get(eachId);
    //         system.debug('oldAccount name -> ' + oldAccount.Name);
    //     }

   
//     List<account> accTriggerNew = trigger.new;
//     List<account> accTriggerOld = trigger.old;
//     Map<id, account> accTriggerNewMap = trigger.newMap;
//     Map<id, account> accTriggerOldMap = trigger.oldMap;
// if (Trigger.isBefore && Trigger.isInsert) {
//         system.debug('before insert trigger new: ' + accTriggerNew);
//         system.debug('before insert trigger old: ' + accTriggerOld);
//         system.debug('before insert trigger new map: ' + accTriggerNewMap);
//         system.debug('before insert trigger old map: ' + accTriggerOldMap);
//     }
//     if (Trigger.isAfter && Trigger.isInsert) {
//         system.debug('after insert trigger new: ' + accTriggerNew);
//         system.debug('after insert trigger old: ' + accTriggerOld);
//         system.debug('after insert trigger new map: ' + accTriggerNewMap);
//         system.debug('after insert trigger old map: ' + accTriggerOldMap);
//     }

//     if (Trigger.isBefore && Trigger.isUpdate) {
//         system.debug('before update trigger new: ' + accTriggerNew);
//         system.debug('before update trigger old: ' + accTriggerOld);
//         system.debug('before update trigger new map: ' + accTriggerNewMap);
//         system.debug('before update trigger old map: ' + accTriggerOldMap);
//     }
//     if (Trigger.isAfter && Trigger.isUpdate) {
//         system.debug('after update trigger new: ' + accTriggerNew);
//         system.debug('after update trigger old: ' + accTriggerOld);
//         system.debug('after update trigger new map: ' + accTriggerNewMap);
//         system.debug('after update trigger old map: ' + accTriggerOldMap);
//     }

   






    // if(trigger.isAfter && trigger.isUpdate){
    //     List<Account> accTriggerOld =trigger.old;
    //     for(account oldAcc: accTriggerOld){
    //         system.debug('old acc id '+oldAcc.id + ', old acc name is '+ oldacc.Name);

    //     }
            // List<Account> accTriggerNew =trigger.new;
            // for(account newAcc: accTriggernew){
            //     system.debug('new  acc id '+newAcc.id + ', new acc name is '+ newacc.Name);
    
            // }
   

           
// bir recordu update yaptigimda trigger.old ile recordun onceki halini gordum ve before and after update icin calisti.Yeni bir record olusturdugumda ise trigger.old before insert ve after insert icin null geldi.

    // if(trigger.isBefore && trigger.isInsert){
    //     system.debug('before insert trigger.old is '+ trigger.old);
    // }
    // if(trigger.isAfter && trigger.isInsert){
    //     system.debug('after insert trigger.old is '+ trigger.old);
        
    // }
    // if(trigger.isBefore && trigger.isUpdate){
    //     system.debug('before update trigger.old is '+ trigger.old);
    // }
    // if(trigger.isAfter && trigger.isUpdate){
    //     system.debug('after update trigger.old is '+ trigger.old);
    // }
           

    
// burda update islemi yaptigimda bir tane before update br tane de after update icin debug gelecek.ayni sekilde insert islemi icinde before ve update olmak uzere iki debug gelecek.
//     list<account> accTriggerNew = trigger.new;
//     if(trigger.isBefore && Trigger.isInsert){
//         system.debug('record in before insert: '+ accTriggerNew);
//         system.debug('before # of records inserted: '+ accTriggerNew.size());
//         for(account eachAcc: accTriggerNew){
//             system.debug(' before acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
//         }
//     }
//     if(trigger.isAfter && Trigger.isInsert){
//         system.debug('record in after insert: '+ accTriggerNew);
//         system.debug('# of records inserted: '+ accTriggerNew.size());
//         for(account eachAcc: accTriggerNew){
//             system.debug('acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
//         }
//     }

//    if(trigger.isBefore && Trigger.isUpdate){
//         system.debug('record in before update: '+ accTriggerNew);
//         system.debug('before # of records updated: '+ accTriggerNew.size());
//         for(account eachAcc: accTriggerNew){
//             system.debug(' before acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
//         }
//     }

//     if(trigger.isAfter && Trigger.isUpdate){
//         system.debug('record in afterupdate: '+ accTriggerNew);
//         system.debug('# of records updated: '+ accTriggerNew.size());
//         for(account eachAcc: accTriggerNew){
//             system.debug('acc id is '+ eachAcc.Id+ ' acc name is '+ eachAcc.Name);
//         }
//     }
   

   
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