@isTest
public class AccountQueueableExampleTest {
    @isTest
    private static void testQueueable1() {
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.name = 'Pi test ' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
      test.startTest();
      system.enqueueJob(new AccountQueueableExample(listAcc));
      test.stopTest();

      List<Account> getAccount =[select id, name from account];
      system.assert(getAccount[0].Name.contains('-- SI'));
    }
}
