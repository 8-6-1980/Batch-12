public class ContactQueableapex implements Queueable{
    List<Account> listAcc = new  List<Account> ();
    public ContactQueableapex (list<account> accounts){
        listAcc = accounts;
    }
    public void execute(QueueableContext qc){
        list<contact> listCon = new list<contact>();
        for(account acc: listAcc){
            contact con = new contact();
            con.LastName = 'Assignment Contact';
            con.AccountId = acc.Id;
            listCon.add(con);
        } 
        insert listCon;

    }
}