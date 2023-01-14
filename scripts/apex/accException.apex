try{
    string s;
    s.toLowerCase();
    Account ac = new Account();
    insert ac;
}catch(DmlException dex){
    system.debug('Dml went wrong buddy');

}catch(Exception ex){
    system.debug('something went wrong buddy');
    system.debug('exception message: '+ ex.getMessage());
    system.debug('ex line number: '+ ex.getLineNumber());
}

system.debug('Apex is SIMPLE...');