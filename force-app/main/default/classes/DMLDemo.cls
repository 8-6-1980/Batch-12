public  class DMLDemo {
   public static void dmlInsertDemo_stndObj() {
    // we will create account record using Apex

    Account acc =new Account();
    acc.Name ='SoftInnovas';
    insert acc;
   
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

}
