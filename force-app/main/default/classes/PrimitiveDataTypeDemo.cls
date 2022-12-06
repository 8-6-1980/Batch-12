public class PrimitiveDataTypeDemo {
   public void printBasicDataType(){
    system.debug(' printing datatype');
    string batchName ='Batch 999';
   integer tottalCandidates =65;
   boolean isAdminCompleted =true;
   system.debug(' batch name is...'+ batchName);
   system.debug(' total candidates...'+tottalCandidates);
   system.debug('is admin completed?..'+ isAdminCompleted);
   Decimal decValue = 998.99;
   system.debug('decimal value is..'+ decValue);
   long longValue = 987654321L;
   system.debug('long value is '+ longValue);
   }
  public void printBasicDataType2(){
    Object ob1 =' string data type in object';
    Object ob2 = 77;
    Object ob3 =true;
    system.debug(ob1);
    system.debug(ob2);
    system.debug(ob3);
    Id accId ='0015h000014R11WAAS';
    system.debug(accId);

  }
   
}
