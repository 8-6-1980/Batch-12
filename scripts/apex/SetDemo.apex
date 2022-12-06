SetDemo.citySet();
SetDemo.randomIntegerSet();


list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
set<integer>sInt = SetDemo.setFromList(listInteger);
system.debug('set is '+ sInt);

 Set<string> cities= new Set<string>();
    cities.add('Tokyo');
    cities.add('Lizbon');
    cities.add('Nairobi');
    cities.add('Berlin');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('TOKYO');
    cities.add('Tokyo');
    set<string> upperCaseCities=SetDemo.uppercaseSet(cities);
    system.debug(upperCaseCities);
