account acc1 = new account();
acc1.Name ='abc';
acc1.Industry ='Energy';


account acc2 = new account();
acc2.Name ='xyz';

account acc3 = new account();
account acc4 = new account();

list<account> listAcc =new List<Account> { acc1,acc2,acc3,acc4};

list <Database.SaveResult> results = Database.insert(listAcc, false);

for(Database.SaveResult r : results){
    if(r.isSuccess()){
        system.debug('Record inserted succesfully. Record id is: '+ r.getId());
    }else{
        system.debug('Errored out. Error is...'+ r.getErrors());
    }
}