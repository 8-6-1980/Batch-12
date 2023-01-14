
// acsess custom setting here.
Map< string , country_Code__c> allCountryCode =country_Code__c.getAll();
system.debug('all country code-->'+allCountryCode);
// country name India, its code is IND
for(string eachCountry: allCountryCode.keyset()){
    system.debug('country name is ' +eachCountry + ', its code is '+ allCountryCode.get(eachCountry).code__c);
}