@isTest
public with sharing class RestCalloutTest {
    
    @isTest
    private static void getAnimalsTest() {
        //1. Set the mock
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the mock
        HttpResponse response = RestCallouts.getAnimals();

        //3. Run asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest
    private static void getAirlinesTest() {
        //1. Set the mock
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
       //2. Test the mock
        HttpResponse response = RestCallouts.getAirlines();

        //3. Run asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }

    @isTest 
    private static void getEmployeesTest() {
        //1. Set the mock
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);

        //2. Test the mock
        HttpResponse response = RestCallouts.getEmployees();

        //3. Run asserts
        System.assertEquals(200, response.getStatusCode());
        System.assertEquals('OK', response.getStatus());
    }
    @isTest 
    private static void getCasesUsingHGTest(){
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response =RestCallouts.getCasesUsingHG();
        system.assertEquals(200,response.getStatusCode());
        System.assertEquals('OK', response.getStatus());

    }
    @isTest 
    private static void postAnimalTest(){
        RestCalloutMock mock = new RestCalloutMock();
        Test.setMock(HttpCalloutMock.class, mock);
        HttpResponse response =RestCallouts.postAnimal();
        system.assertEquals(201,response.getStatusCode());
        System.assertEquals('OK', response.getStatus());

    }

}