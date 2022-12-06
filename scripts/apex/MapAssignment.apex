Map< String, Integer> marksObtainInMaths = new Map< String, Integer>();
marksObtainInMaths.put('0111CE112', 40);
marksObtainInMaths.put('0111CE102', 19);
marksObtainInMaths.put('0111CE100', 33);
marksObtainInMaths.put('0111CE098', 40);
marksObtainInMaths.put('0110AE798', 15);
set<String> uniqueRollNumberSet = marksObtainInMaths.keySet();
system.debug(' all students roll numbers = '+uniqueRollNumberSet);
list<Integer> marksObtainList = marksObtainInMaths.values();
system.debug('all marks obtains= '+marksObtainList);


for(string eachRollNumber:uniqueRollNumberSet){
    Integer eachMarkObtain = marksObtainInMaths.get(eachRollNumber);
    if(eachMarkObtain<20){
        system.debug(eachRollNumber  + ' is not qualified for next class');
    }else{
        system.debug(eachRollNumber+ ' is qualied for next class');
    }
}

