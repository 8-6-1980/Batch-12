list<case> caseList = new list<case> ();
for(integer i=0; i<205; i++){
    case c =new case();
    c.Subject ='There is a bug';
    c.Description ='Resolve it';
    c.Status ='New';
    caseList.add(c);
}
if(!caseList.isEmpty()){
    insert caseList;

    list<case> getAllCases =[select id, status from case where status ='New'];
    for(case eachCase: getAllCases){
        eachCase.Status ='Working';
    }
    update getAllCases;
}
