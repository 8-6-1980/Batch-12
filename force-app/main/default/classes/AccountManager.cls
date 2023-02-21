@RestResource(urlMapping = '/Account/*')
global with sharing class AccountManager {
    // https://oseyllc-dev-ed.develop.my.salesforce.com/services/apexrest/Account/001Do000003Dzg3IAC
    @HttpGet 
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id accountId = uri.substring(lastIndex+1);
        Account ac = [select id,Name, Type,AnnualRevenue from Account where id=: accountId];
        return ac;
    }
    @HttpPost 
    global static id postAccount(string Name, string Type, string AccountNumber,string Industry ){
        Account ac = new Account();
        ac.Name = Name;
        ac.Type = Type;
        ac.AccountNumber = AccountNumber;
        ac.Industry = Industry;
        insert ac;
        return ac.Id;
    }
    @HttpDelete 
    global static string deleteAccount(){
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id accountId = uri.substring(lastIndex+1);
        try {
            delete [select id From Account where id =: accountId];

        } catch(Exception ex){
            return 'Fail';
        }
           return 'Success';
    
    }
    @HttpPut 
    global static id putAccount(string Name, string Type, string AccountNumber,string Industry){
        Account ac = new Account();
        ac.Name = Name;
        ac.Type = Type;
        ac.AccountNumber = AccountNumber;
        ac.Industry = Industry;
        upsert ac;
        return ac.Id;

    }
    @HttpPatch 
    global static Account patchAccount(){
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Account ac = (Account)JSON.deserialize(body, Account.class);
        update ac;
        return [select Id, Name, AnnualRevenue,Type from Account where Id =: ac.Id limit 1];
    }

}
    