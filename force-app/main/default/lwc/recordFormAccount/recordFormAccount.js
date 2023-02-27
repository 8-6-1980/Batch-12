import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from  '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from  '@salesforce/schema/Account.Industry';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';
import REVENUE_FIELD from  '@salesforce/schema/Account.AnnualRevenue';
import ACCNUMBER_FIELD from  '@salesforce/schema/Account.AccountNumber';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class RecordFormAccount extends LightningElement {
    recordId = '001Do000003DzfwIAC';
    objectName = ACCOUNT_OBJECT;
    fields=[NAME_FIELD,TYPE_FIELD,INDUSTRY_FIELD,PHONE_FIELD,REVENUE_FIELD,ACCNUMBER_FIELD];

    successHandler(){
         const successToast = new ShowToastEvent({
            title: "Success",
            message: "The account record has been saved successfully",
            variant: "success"
         });
        this.dispatchEvent(successToast);
    }
}