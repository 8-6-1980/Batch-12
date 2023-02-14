public with sharing class CaseInvocable {
@InvocableMethod(label='Send Email & Save Activity'
description='This method sends an email and saves the same as activity'
category='Case')

    Public static void sendEmailSaveActivity(list<InputRequest> inputs){
        list<Messaging.SingleEmailMessage> msgs = new list<Messaging.SingleEmailMessage>();
        // itarete over the inputs and create an email for each
       for(InputRequest input: inputs){
           Messaging.SingleEmailMessage msg = new  Messaging.SingleEmailMessage();
            msg.setSubject('Case Created: '+ input.caseNumber);
            msg.setPlainTextBody('A case has been created for your query.Please quote the case number avaliable in the subject when you talk to customer care!');
            msg.setTargetObjectId(input.contactId);
            msg.setSaveAsActivity(true);
            msgs.add(msg);
       }
          if(!msgs.isEmpty()){
            messaging.sendEmail(msgs);
          }
    }

    public class InputRequest{
        @InvocableVariable(label='Contact id' description='Contact Id' required=true)
        public id contactId;
        @InvocableVariable(label='Case Number' description='Case Number' required=true)
        public string caseNumber;

    }
    
}