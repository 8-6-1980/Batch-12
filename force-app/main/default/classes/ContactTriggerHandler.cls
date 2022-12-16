public class ContactTriggerHandler {
    public static void updateContactValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggerNew) {
            contact oldContact =conTriggerOldMap.get(eachContact.id);
            if (oldContact.LeadSource == 'Partner Referral') {
                eachContact.addError('Cannot update Partner Referral contact');
            }
        }
    }

    public static void updateContactValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld,
                                    Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap) {

       for( contact eachCon: conTriggerNew) {
        if(eachCon.LeadSource !=conTriggerOldMap.get(eachCon.id).LeadSource){
            eachCon.LeadSource.addError('CANNOT UPDATE LEAD SOURCE!PLEASE USER.');
        }
       }                                
}

}