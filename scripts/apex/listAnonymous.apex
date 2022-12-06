list<string> listStr = new list<string>();
if(listStr.isEmpty()){
    system.debug('List is empty. come on.');
}

listStr.add('some string');
boolean listIsEmpty = listStr.isEmpty();
if(!listIsEmpty){
    system.debug('list is not empty');
}


List<string> listStr2 = new list<string>{
   'hello', 'word'
}; 
system.debug(listStr2);

List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('before sort '+listInteger);
        listInteger.sort();
         system.debug('after sort '+listInteger);
