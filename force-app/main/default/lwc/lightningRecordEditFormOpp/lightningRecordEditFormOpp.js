import { LightningElement } from 'lwc';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import TYPE_FIELD from  '@salesforce/schema/Opportunity.Type';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';
import AMOUNT_FIELD from '@salesforce/schema/Opportunity.Amount';
import ACCOUNT_FIELD from '@salesforce/schema/Opportunity.AccountId';
import CLOSEDATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class LightningRecordEditFormOpp extends LightningElement {
    recordId ='006Do00000319OiIAI';
    objectName = OPP_OBJECT;
    fields ={
        account : ACCOUNT_FIELD,
        name : NAME_FIELD,
        type : TYPE_FIELD,
        stage : STAGE_FIELD,
        amount : AMOUNT_FIELD,
        closedate :CLOSEDATE_FIELD
    };
    successHandler(){
        const successToast = new ShowToastEvent({
           title: "Success",
           message: "The opportunity record has been saved successfully",
           variant: "success"
        });
       this.dispatchEvent(successToast);
   }
}