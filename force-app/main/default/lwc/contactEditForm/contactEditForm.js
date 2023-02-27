import { LightningElement } from 'lwc';
import{ ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import TITLE_FIELD from  '@salesforce/schema/Contact.Title';
import EMAIL_FIELD from  '@salesforce/schema/Contact.Email';
import BIRTHDATE_FIELD from '@salesforce/schema/Contact.Birthdate';
export default class ContactEditForm extends LightningElement {
   recordId ='003Do000002PpzxIAC';
   objectName = CONTACT_OBJECT;
   fields = {
    firstname : FIRSTNAME_FIELD,
    lastname : LASTNAME_FIELD,
    title : TITLE_FIELD,
    email : EMAIL_FIELD,
    birthdate : BIRTHDATE_FIELD
   };
   succsessHandler() {
     const succsessEvent = new ShowToastEvent({
        title: "Succsess",
        message : "The contact record updated succsessfully!",
        variant:"Success"
     });
     this.dispatchEvent(succsessEvent);
   }
}