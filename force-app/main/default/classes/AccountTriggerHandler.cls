public class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        for (Account eachAccount : accTriggerNew) {
            boolean updateDesc = false;
            if (Trigger.isInsert && eachAccount.Active__c == 'Yes') {
                updateDesc = true;
            }
            if (Trigger.isUpdate) {
                Id accId = eachAccount.Id;
                Account oldAcc = accTriggerOldMap.get(accId);
                Account newAcc = accTriggerNewMap.get(eachAccount.Id);
                
                if(eachAccount.Active__c == 'Yes' && oldAcc.Active__c != newAcc.Active__c){
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAccount.Description = 'Account is now Active. Enjoy, celebrate, have fun.';
            }
        }
    }



        //10 accounts
            //4 acc updated vip fields
            //6 acc updated other fields
        
            //set of account ids
        //for trigger.new
            //check if vip is changed (if condition)
               //add acc id in set of accountids
        
        //we have all acc ids where is vip is changed

        //get contacts of all the accounts where vip is changed. 
        //10 contacts

        //for loop of contact
            //set vip field same as account's vip field
        
        //update contacts
    public static void updateVIPForAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {
        set<id> setAccIDs= new set<id>();
        for(account eachAcc: accTriggerNew){
            if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.Id).VIP__c){
                setAccIDs.add(eachAcc.Id);
            }
        }

        List<Contact> conList =[select id, name, account.id, vip__c from contact where account.id in:setAccIDs];

        for(contact eachCon: conList){
            boolean accVIP = accTriggerNewMap.get(eachCon.Account.id).VIP__c;
            eachCon.VIP__c = accVIP;
        }
        update conList;
        
    }
}