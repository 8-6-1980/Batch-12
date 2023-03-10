import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { createRecord } from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class CreateRecordAccount extends LightningElement {
    
    industryOptions =[];
    formdata ={};

    @wire(getObjectInfo, {objectApiName:ACCOUNT_OBJECT })
    accountInfo;

    @wire(getPicklistValues, {fieldApiName:INDUSTRY_FIELD , recordTypeId:'$accountInfo.data.defaultRecordTypeId' })
    picklistHandler({data,error}){
       if(data){
        this.industryOptions = data.values;
        console.log('form Acc', data);
       }
       if(error){
         console.error(error);
       }
    }
    changeHandler(event){
      // const name = event.target.name;
      // const value = event.target.value;
      const{name,value} =event.target;
      this.formdata[name] = value; //formdata= {Name:"my account", Industry:"Biotech",AnnualRevenue: 100000000}
      console.log('Account Form',JSON.stringify(this.formdata));

    }
    saveAccount(){
      // prepare recordInput
      const recordInput = {
        apiName:ACCOUNT_OBJECT.objectApiName,
        fields: this.formdata
      }
      // call createRecord
      createRecord(recordInput)
            .then(result => {
              //  show success toast
              const successToast = new ShowToastEvent({
                title :"Success",
                message : "Account record has been created successfully!",
                variant : "success"
              })
              this.dispatchEvent(successToast);
            })
            .catch(error => {
              // show error toast
              console.error(error);
            })
    }
    cancelAccount(){
           this.template.querySelector('form.accountForm').reset();
           this.template.querySelector('lightning-combobox').value=undefined;
           this.formdata = {};
    }
}