@isTest
public class ContactQueableapexTest {
    @isTest 
    private static void testContactQueuable(){
        List<Account> accList=new  List<Account>();
        for(integer i=0; i< 200; i++){
            account ac = new account();
            ac.Name = 'Test account';
            accList.add(ac);
        }
        test.startTest();
        system.enqueueJob(new ContactQueableapex(accList));
        test.stopTest();
        List<Contact> getContact=[select id, name from contact];
        system.assertEquals(200, getContact.size());
    }
}