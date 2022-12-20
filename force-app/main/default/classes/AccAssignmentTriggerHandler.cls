public  class AccAssignmentTriggerHandler {
   public static void UpdateBillingCity(list<account> triggernew,list<account> triggerold, Map<id,account> triggernewMap , Map<id,account> triggerOldMap) {
     set<id> accIds = new set<id>();
     for(account acc: triggernew){
        if(acc.BillingCity != triggerOldMap.get(acc.id).BillingCity){
            accIds.add(acc.Id);
        }
     }
     list<contact> conList =[select id,name,account.id, mailingCity from contact where account.id in:accIds ];
     if(!conList.isEmpty()){
        for(contact con:conList){
            string accBlngCity = triggernewMap.get(con.Account.id).BillingCity;
            con.MailingCity = accBlngCity;
         }
     }
     
     update conList;
   }
}
