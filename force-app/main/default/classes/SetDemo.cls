public class SetDemo {
    public static void citySet() {
    Set<string> cities= new Set<string>();
    cities.add('Tokyo');
    cities.add('Lizbon');
    cities.add('Nairobi');
    cities.add('Berlin');
    cities.add('Berlin');
    cities.add('Nairobi');
    cities.add('TOKYO');
    cities.add('Tokyo');

    system.debug('cities are '+ cities);
    }

    public static void randomIntegerSet(){
        Set<integer> integerSet = new Set<integer>();
        integerSet.add(10);
        integerSet.add(15);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(15);
        system.debug('integer set '+integerSet);
    }

    public static Set<integer> setFromList(list<integer> intList){
        set<integer> intSet = new set<integer>();
        intSet.addAll(intList);
        return intSet;
    }

    public static set<string> uppercaseSet(set<string> setStr){
        Set<string> returnSet = new Set<string>();
        for (string eachStr : setStr) {
            string tempStr =eachStr.toUpperCase();
            returnSet.add(tempStr);
        }
        return returnSet;
    }
}