@isTest
public with sharing class SoapCalloutsTest {
    
    @isTest 
    private static void parksCalloutTest(){
        // 1.Set the mock
        ParksServicesMock mock = new  ParksServicesMock();
        Test.setMock(WebServiceMock.class, mock);

        // 2. Test the mock
        string country = 'Turkiye';
        string[] parks = SoapCallouts.parksCallout(country);

        // 3. Do assert
        system.assertEquals(2, parks.size());

    }
    @isTest 
    private static void doAddCalloutTest() {
        // 1.Set the mock
        DoAddCalloutMock mock = new DoAddCalloutMock();
        Test.setMock(WebServiceMock.class, mock);

       // 2. Test the mock
      Double result =  SoapCallouts.doAddCallout(10, 5);

       // 3. Do assert
       system.assertEquals(15, result);

    }
}