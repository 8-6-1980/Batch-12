public  class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<Contact> lstcontact =[SELECT Id, LastName FROM Contact where LastName like '%A%'];
        system.debug( 'list which last name contains A is '+ lstcontact);
        system.debug('size of list is..'+ lstcontact.size());
    
    }

    public static void soql_formethod(){
        List<Contact> lstcontact =[SELECT Id, LastName, Phone FROM Contact ];
        for (Contact eachContact : lstcontact) {
            string cLastName = eachContact.Lastname;
            string cPhoneNumber =eachContact.Phone;
            system.debug('contact last name = '+cLastName+ ' '+'contact phone number= '+cPhoneNumber);
        }
         

    }
}
