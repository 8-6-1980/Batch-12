@RestResource(urlMapping='/Case/*')
global with sharing class CaseManager {
    // https://oseyllc-dev-ed.develop.my.salesforce.com/services/apexrest/Case/500Do000001Xp3zIAC

    @HttpGet
    global static Case getCase() {
         RestRequest request = RestContext.request;
         string uri = request.requestURI;
          Integer lastIndex = uri.lastIndexOf('/');
          Id caseId = uri.substring(lastIndex+1);
          Case cs =[Select id, CaseNumber, Subject, Description,Type,Priority,Status from Case where id = : caseId];
          return cs;
    }

    @HttpPost 
    global static id postCase(string Subject, string Description, string Priority, string Status) {
       Case cs = new Case();
       cs.Subject = Subject;
       cs.Description = Description;
       cs.Priority = Priority;
       cs.Status = Status;
       insert cs;
       return cs.Id;
    }

    @HttpDelete 
    global static string deleteCase() {
        RestRequest request = RestContext.request;
        string uri = request.requestURI;
        Integer lastIndex = uri.lastIndexOf('/');
        Id caseId = uri.substring(lastIndex+1);
        try {
            delete [select id From case where id =: caseId];

        } catch(Exception ex){
            return 'Fail';
        }
           return 'Success';
    }

    @HttpPut
    global static id putCase( string id ,string Subject, string Description, string Priority, string Status) {
        Case cs = new Case();
        cs.Id =Id;
        cs.Subject = Subject;
        cs.Description = Description;
        cs.Priority = Priority;
        cs.Status = Status;
        upsert cs;
        return cs.Id;
    }

    @HttpPatch
    global static Case patchCase() {
        RestRequest request = RestContext.request;
        String body = request.requestBody.toString();
        Case cs = (Case)JSON.deserialize(body, Case.class);
        update cs;
        return [SELECT Id, CaseNumber, Subject, Description, Priority, Status FROM Case WHERE Id = :cs.Id LIMIT 1];
    }

}
