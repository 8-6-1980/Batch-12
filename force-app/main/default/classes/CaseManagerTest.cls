@isTest 
public with sharing class CaseManagerTest {
   @TestSetup
   private static void makeData(){
    List<Case> cases = new List<Case>();
    for(integer i=0; i<3; i++){
      Case cs = new Case(Subject='Test Subject '+i, Description='Test Desscription '+i, Origin='Email');
      cs.Type ='Electrical';
      cs.Priority ='High';
      cs.Status ='New';
      cases.add(cs);    
    }
      insert cases;
      list<Case> insertedCases =[select id from Case];
      system.assertEquals(3, insertedCases.size());
   }

   @isTest 
  private static void postCaseTest(){
    Test.startTest();
     Id caseId = CaseManager.postCase('Subject', 'Description', 'High', 'New');
     Test.stopTest();
     system.assertNotEquals(null, caseId);
     Case cs =[select Id,Subject, Priority from case Where Id=: caseId];
     system.assertEquals('High', cs.Priority);
  }
  @isTest 
  private static void putCaseTest(){
    Test.startTest();
    // pass null in Id=> testing insert scenario
     Id caseId = CaseManager.putCase(null,'Subject', 'Description', 'Medium', 'New');
     system.assertNotEquals(null, caseId);
     Case cs1 =[select Id,Subject, Priority from case Where Id=: caseId];
     system.assertEquals('Medium', cs1.Priority);

    //  pass valid Id=> Testing update scnerio
    Id sameCaseId = CaseManager.putCase(caseId, 'Subject Changed', 'Description', 'High', 'In Progress');
    system.assertEquals(caseId, sameCaseId);
    Case cs2 =[select Id, Priority from Case WHERE Id=:caseId];
    system.assertEquals('High', cs2.Priority);

     Test.stopTest();
    
  }
  @isTest 
  private static void getCaseTest(){
    Test.startTest();
    // 1.Prepare restRequest
    Case cs =[select id,Subject,Priority from Case limit 1];
    string homeUrl = system.URL.getSalesforceBaseUrl().toExternalForm();
    RestRequest request = new RestRequest();
    request.httpMethod ='GET';
    request.requestURI = homeUrl + '/services/apexrest/Case/' +cs.Id;
    // 2.Prepare restContext
    RestContext.request = request;

    // 3.Test the business method
    Case objCase =CaseManager.getCase();
    system.assertEquals(cs.Id, objCase.Id);
    system.assertEquals(cs.Subject, objCase.Subject);
    system.assertEquals(cs.Priority, objCase.Priority);
    Test.stopTest();
  }
  @isTest 
    private static void deleteCaseTest() {
        Test.startTest();
        //1. Prepare RestRequest
        Case cs = [SELECT Id, Subject, Priority, Status FROM Case LIMIT 1];
        String homeUrl = System.URL.getSalesforceBaseUrl().toExternalForm();

        RestRequest request = new RestRequest();
        request.httpMethod = 'DELETE';
        request.requestURI = homeUrl + '/services/apexrest/Case/' + cs.Id;

        //2. Prepare RestContext
        RestContext.request = request;

        //3. Test the business method
        String status = CaseManager.deleteCase();
        System.assertEquals('Success', status);
        //Test Exception
        // try {
        //     String failstatus = CaseManager.deleteCase();
        //     System.assertEquals('Fail', failstatus);
        // } catch(Exception ex) {
            
        // }
        Test.stopTest();
    }


  @isTest 
    private static void patchCaseTest() {
        Test.startTest();
        //1. Prepare RestRequest
        Case cs = [SELECT Id, Subject, Description, Priority, Status FROM Case LIMIT 1];
        cs.Priority = 'Medium';
        cs.Status = 'In Progress';
        String body = JSON.serialize(cs);

        RestRequest request = new RestRequest();
        request.httpMethod = 'PATCH';
        request.requestBody = Blob.valueOf(body);

        //2. Prepare RestContext
        RestContext.request = request;

        //3. Test the business method
        Case objCase = CaseManager.patchCase();
        System.assertEquals('Medium', objCase.Priority);
        System.assertEquals('In Progress', objCase.Status);
        Test.stopTest();
    }




}