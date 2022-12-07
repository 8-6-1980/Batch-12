public  class DMLDemo {
   public static void dmlInsertDemo_stndObj() {
    // we will create account record using Apex

    Account acc =new Account();
    acc.Name ='SoftInnovas';
    system.debug('not Inserted record ' +acc);
    insert acc;
    system.debug('Inserted record ' +acc);
   
   }
   public static void dmlInsertDemo_cstmObj () {
    salesforce_project__c spNew = new  salesforce_project__c ();
    spNew.project_name__c = 'Teach DML to Batch12';
    spNew.description__c = 'all of you doing great';
    insert spNew;
   }

   public static void dmlUpdateDemo_1() {
    // we will create account record using Apex

    Account acc =new Account();
    acc.Name ='SoftInnovas';
    insert acc;
    acc.Name ='Salesforce Inc';
    update acc;
   }

   public static void dmlUpdateDemo_3(){
      Account acc=[select id, name from account where name='Softinnovas Inc' limit 1];
      acc.Name ='Softinnovas Inc2';
      update acc;
      system.debug('acc=> '+acc);
   }


   public static void dmlUpdateDemo_4() {
      account acc =[select id from account where name ='SoftInnovas Inc.' limit 1];
      contact cnt = new Contact();
      cnt.LastName ='Biden';
      cnt.AccountId =acc.Id;
      insert cnt;
      system.debug('cnt-> '+cnt);
      
   }

   public static void dmlUpdateDemo_5() {
      Salesforce_Project__c sp =[select id from  Salesforce_Project__c order by CreatedDate DESC LIMIT 1];
      Salesforce_Ticket__c st = new Salesforce_Ticket__c();
      st.Subject__c ='learn apex dml';
      st.Priority__c ='High';
      st.Status__c ='New';
      st.Requested_by_date__c =Date.today();
      st.Salesforce_Project__c =sp.id;
      insert st;
      
   }

   public static void dmlMultipleRecordInsert_right() {
      list<account> listAcc =new  list<account> ();
      account acc1 =new account();
      acc1.Name =' acc bulk 1';
      listAcc.add(acc1);

      account acc2 =new account();
      acc2.Name =' acc bulk 2';
      listAcc.add(acc2);
      
      account acc3 =new account();
      acc3.Name =' acc bulk 3';
      listAcc.add(acc3);
      
      insert listAcc;
      
   }
   public static void  dmlMultipleRecordInsert_right2() {
      list<account> listAcc =new  list<account> ();
      for(integer i=0; i<155; i++){
         Account acc =new Account();
         acc.Name ='SoftInnovas v'+i;
         acc.Active__c ='yes';
         listAcc.add(acc);
      }
      if(!listAcc.isEmpty()){
         insert listAcc;
      }
      
   }

   public static void dmlMultipleRecordInsert_right1() {
      List<Account> listAccount =[select id,name,active__c from account];
      List<Account> updateAccounts =new List<Account>();
      for (account acc: listAccount) {
         if(acc.Active__c=='Yes'){
            acc.Name =acc.Name + 'via B.0';
            updateAccounts.add(acc);
         }
      }
      if(!updateAccounts.isEmpty()){
         update updateAccounts;
      }
      
   }
}
