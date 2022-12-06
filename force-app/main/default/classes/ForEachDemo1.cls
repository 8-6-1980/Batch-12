public class ForEachDemo1 {
    public static void iterateIntegerList(){
        List<Integer> listInteger = new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
            
        }
    }
    public static integer add(list<integer> intList){
        integer returnInt =0;
        for(integer eachInt: intList){
            system.debug('eachInteger-->'+ eachInt);
            returnInt += eachInt;
            system.debug('returnInteger-->' + returnInt);
        }
        return returnInt;
    }
}
