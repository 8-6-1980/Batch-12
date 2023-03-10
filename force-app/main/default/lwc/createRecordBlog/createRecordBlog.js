import { LightningElement } from 'lwc';
import EMP_OJECT from '@salesforce/schema/Employee__c';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
export default class CreateRecordBlog extends LightningElement {
    formdata ={};
    changeHandler(event){
        const{name,value} =event.target;
        this.formdata[name] = value;
        console(JSON.stringify(formdata));
    }
    saveEmployee(){
        const recordInput ={
            apiName:
        }
    }
    
}