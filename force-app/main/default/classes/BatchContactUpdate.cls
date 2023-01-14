public  class BatchContactUpdate implements Database.Batchable<sObject>, Schedulable{
 public void execute(SchedulableContext sc){
    BatchContactUpdate cn = new BatchContactUpdate();
    database.executeBatch(cn);
 }
    
    public database.QueryLocator start(database.BatchableContext bc){

        return database.getqueryLocator([select id,Description,(select id, description, accountId from contacts where accountId!= null) from Account]);

        
    }

    public void execute(Database.BatchableContext bc,list<account> scope){
            List<contact> conList = new  List<contact> ();
            for(account ac: scope){
                for(contact c: ac.contacts){
                    c.description=ac.description;
                    conList.add(c);
                }
                
                
            }
            if(!conList.isEmpty()){
                update conList;
            }
    }
    public void finish(Database.BatchableContext bc){
        system.debug('finish method call');
    }
}
