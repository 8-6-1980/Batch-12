public  class Conditionclass_assignment {
    public  String Ifclassmethod(integer numOfMonth) {
   string month= '';
   if(numOfMonth ==1){
    month='January';

   }else if(numOfMonth==2){
    month='February';
   }else{
    month ='Not a valid Month';
   }
   return month;
    }
    public string casemethod( string monthName){
        string quarter='';
        if(monthName=='January' || monthName==' February' || monthName=='March'){
            quarter= 'quarter 1';
        }else {
             quarter = ' not a valid quarter';
        }
       return quarter;
    }
}
