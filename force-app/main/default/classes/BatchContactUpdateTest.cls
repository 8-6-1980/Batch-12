@isTest
public  class BatchContactUpdateTest {
    @isTest 
    private static void batchContactTest() {
        list<account> listAcc = new List<Account>();
        for(integer i=0; i<500; i++){
            account ac = new account();
            ac.Name ='Test Batch'+i;
            ac.description ='test batch description';
            listAcc.add(ac);
        }
        insert listAcc;

        list<contact> conList = new  list<contact>();
        for(account acc: listAcc){
            contact con = new contact();
            con.AccountId = acc.id;
            con.LastName = 'Test Contact' + acc.Name;
            conList.add(con);
        }
        insert conList;

        test.startTest();
        BatchContactUpdate bc = new BatchContactUpdate();
        system.schedule('jobName', '0 0 15 1/1 * ? *', bc);
        Database.executeBatch(bc, 500);
        test.stopTest();
     
        
    }
    
}
