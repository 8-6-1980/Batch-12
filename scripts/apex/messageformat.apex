// JSON: javascript Object Notation

{
    "Name" : "Hicran" ,
    "Age" : 35 ,
    "Title" : " Developer" ,
    "Salary" : 200000

}

// 2 students detail in JSON format
[
    {
    "Name" : "Hicran" ,
    "Age" : 35 ,
    "Title" : " Developer" ,
    "Salary" : 200000

},
{
    "Name" : "Orhan" ,
    "Age" : 45 ,
    "Title" : " Developer" ,
    "Salary" : 300000

}
]
// Get an account record and convert the same into JSON format
Account acc =[SELECT  Name, Type ,Industry ,AnnualRevenue FROM Account WHERE AnnualRevenue!= null AND Type!= null AND Industry!= null limit 1];
string jsonString = JSON.serialize(acc);
system.debug(jsonString);


list<Account> accounts =[SELECT  Name, Type ,Industry ,AnnualRevenue FROM Account WHERE AnnualRevenue!= null AND Type!= null AND Industry!= null limit 4];
string jsonString = JSON.serialize(accounts);
system.debug(jsonString);



RestCallouts.getAnimals();
RestCallouts.getAirlines();
RestCallouts.getEmployees();
RestCallouts.getCasesUsingHG();
RestCallouts.postAnimal();

SoapCallouts.parksCallout('United States');
SoapCallouts.doAddCallout(12,17);
SoapCallouts.doMultiplyCallout(13,5);
