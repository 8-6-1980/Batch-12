public class StringDemoClass {
   public void stringMethod1(){
       string sessionDescription ='learning string methods in apex language';
       system.debug(sessionDescription);
       Integer lengthOfStr =sessionDescription.length();
       system.debug('length of string is=' +lengthOfStr);


       string capsSessionDesc =sessionDescription.toUpperCase();
       system.debug( 'in capitals-->'+capsSessionDesc);

        Boolean containsApex = sessionDescription.contains('apex');
        system.debug('contains apex? '+containsApex);
        Boolean containsSf = sessionDescription.contains('salesforce');
        system.debug('contains salesforce? '+containsSf);

        Boolean containsApex2 = sessionDescription.contains('Apex');
        system.debug('contains Apex? '+containsApex2);
        Boolean containsApex3 = sessionDescription.containsIgnoreCase('Apex');
        system.debug('contains Apex? '+containsApex3);



   }
}
