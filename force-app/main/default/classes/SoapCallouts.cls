public with sharing class SoapCallouts {
    public static string[] parksCallout(string country) {
          ParksServices.ParksImplPort parkService = new  ParksServices.ParksImplPort(); 
          string[] parks = parkService.byCountry(country);
          system.debug(parks);
          return parks;
    }
    public static Double doAddCallout(Double arg0, Double arg1){
        CalculatorServices.CalculatorImplPort calcService = new  CalculatorServices.CalculatorImplPort();
        Double result = calcService.doAdd(arg0, arg1);
        system.debug(result);
        return result;
    }
    public static Double doMultiplyCallout(Double arg0,Double arg1){
        CalculatorServices.CalculatorImplPort calcService = new  CalculatorServices.CalculatorImplPort();
        Double result = calcService.doMultiply(arg0, arg1);
        system.debug(result);
        return result;

    } 
}