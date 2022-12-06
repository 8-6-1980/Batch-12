public class SoqlAssignment2 {
    public static void ContactToAccount(){
        list<Contact> lstContact = [ select id, name, account.name, account.id from Contact];
        for (Contact eachContact : lstContact) {
            string accName = eachContact.account.name;
            string accId = eachContact.account.id;
            system.debug('Account name is-->'+accName + ', account id is--> '+accId);
        }
    }
    public static void AccountToContact(){
        List<Account> lstAccount =[select id, name, (select id, name from Contacts) from Account];
        for (Account eachAccount: lstAccount) {
           list<contact> listContact = eachAccount.Contacts;
           for (Contact eachContact : listContact) {
            string cName = eachContact.Name;
            string cId = eachContact.Id;
            system.debug('account name '+eachAccount.Name+' contact name is  '+cName+ '  contact id is  '+cId);
           }
        }
    }
}