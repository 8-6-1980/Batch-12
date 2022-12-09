DMLDemo.dmlInsertDemo_stndObj();
DMLDemo.dmlInsertDemo_cstmObj();
DMLDemo.dmlUpdateDemo_1();
DMLDemo.dmlUpdateDemo_3();
DMLDemo.dmlUpdateDemo_4();
DMLDemo.dmlUpdateDemo_5();
DMLDemo.dmlMultipleRecordInsert_right();
DMLDemo.dmlMultipleRecordInsert_right2();
DMLDemo.dmlMultipleRecordInsert_right1();
 
 List<Account> listAccount = [ select id from account where createddate =THIS_WEEK];
 delete listAccount;