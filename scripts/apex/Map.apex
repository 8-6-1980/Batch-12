Map<string, string> mapCntCurrency =new Map<string, string>();
mapCntCurrency.put('USA', 'Dollor');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Turkiye','Lira');
mapCntCurrency.put('France','Euro');
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('India', 'ruppiees');
mapCntCurrency.put('India', 'rupiee');
mapCntCurrency.put('El Salvador', 'Bitcoin');
system.debug(' map of country and currency '+ mapCntCurrency);


string IndiaCurrency= mapCntCurrency.get('India');
system.debug('The currency of India is .. ' +IndiaCurrency);
string country ='Turkiye';
string countryCurrency = mapCntCurrency.get(country);
system.debug(country + ' currency is ..'+ countryCurrency);
set<string> countrySet = mapCntCurrency.keySet();
system.debug('all country are ..' + countrySet);

list<string> currencyList =mapCntCurrency.values();
system.debug(' currency list is...'+ currencyList);

// keyset--> set of keys(country)

set<string> countries = mapCntCurrency.keySet();
for( string eachCountry : countries){
    system.debug( '* each country is ' + eachCountry);
    string eachCurrency = mapCntCurrency.get(eachCountry);
    system.debug(' ** each currency is  ' + eachCurrency);
    system.debug( 'country is '+ eachCountry + ', its currency is  '+eachCurrency);
}

