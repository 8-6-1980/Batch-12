public with sharing class DoMultipilyCalloutMock implements WebServiceMock{
    public void doInvoke(Object a, Object b, Map<String,Object> response, String d, String e, String f, String g, String h, String i){
        CalculatorServices.doMultiplyResponse response_x = new CalculatorServices.doMultiplyResponse();
        response_x.return_x = 15;
        response.put('response_x', response_x); 

    }
}