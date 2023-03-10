
import { getRecord, updateRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import EMMAIL_FIELD from '@salesforce/schema/Employee__c.Email__c';
import DESIGNATION_FIELD from '@salesforce/schema/Employee__c.Designation__c';
import EMP_NAME_FIELD from '@salesforce/schema/Employee__c.Employee_Name__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

const FIELDS =[EMMAIL_FIELD,DESIGNATION_FIELD,EMP_NAME_FIELD];

export default class UpdateRecordEmployee extends LightningElement {
    recordId = "a0ADo000000i9mxMAA";
    formdata ={}

    changeHandler(event) {
        const {name, value} = event.target;
        this.formdata[name] = value;
    }

    @wire(getRecord, {recordId: '$recordId', fields: FIELDS})
    employee;
    updateEmployee() {
        this.formdata["Id"] = this.recordId;
        const recordInput = {
            fields: this.formdata
        };
        updateRecord(recordInput)
            .then(result => {
                const successToast = new ShowToastEvent({
                    title: "Success",
                    message: "Employee record has been updated successfully!",
                    variant: "success"
                });
                this.dispatchEvent(successToast);
            })
            .catch(error => {
                console.error(error);
            })
    }
    
    
}