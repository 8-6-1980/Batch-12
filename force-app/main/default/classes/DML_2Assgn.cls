public  class DML_2Assgn {
   public static void insert_dml() {
    list<Account> listAcc = new  list<Account> ();
    for(integer i=0; i<=5; i++){
        account acc = new account();
        acc.Name = 'Hicran Asiignment'+ i;
        listAcc.add(acc);
    }
    if(!listAcc.isEmpty()){
        insert listAcc;
    }
    system.debug(' created list acc -->'+listAcc);
    
   }
   public static void updating_dml() {
   account acc =new account();
   acc.Name ='Account Created';
   insert acc;
   system.debug(' new account name :'+acc.Name);

   acc.Name ='Account updated';
   update acc;
   system.debug('updated account name :'+acc.Name);

    
   }
}
