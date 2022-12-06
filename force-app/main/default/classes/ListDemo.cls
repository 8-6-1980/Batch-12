public  class ListDemo {


    public static string candidatesList(integer i){
  
        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        system.debug('Candidates are ' +listCandidates);
        string returnString = '';
        integer sizeOfList =listCandidates.size();
        if( i>= 0&& i<sizeOfList){
         returnString = listCandidates[i];
            
        }else{
            returnString = ' no values find.stay in limits';

        }
        
        return returnString;



    // public static void candidatesList(){
  
    //     List<string> listCandidates = new List<string>();
    //     listCandidates.add('Marc');
    //     listCandidates.add('Elon');
    //     listCandidates.add('Bill');
    //     listCandidates.add('Marc');
    //     system.debug('Candidates are ' +listCandidates);
        
    }
    public static void randomIntegerList(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);

        integer valueAt3index = listInteger.get(3);
        integer valueAt3index2 = listInteger[3];
        system.debug(' value at index 3 is '+valueAt3index);
        system.debug(' value at index 3 is '+valueAt3index2);


        system.debug('List of random integers : '+ listInteger);
    }

    public static void allCats(){
        List<cat> listCats = new List<cat>();
 cat falconsCat = new Cat('fluffykins','white');
 cat cat2 = new Cat ('simba' ,'brown');
 cat batch12Cat3 = new cat('black pepper' ,'black');
 listCats.add(falconsCat);
 listCats.add(cat2);
 listCats.add(batch12Cat3);
 listCats.add(falconsCat);
 system.debug(' list of cats + '+listCats);


    }

}
