import { LightningElement, wire } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';

export default class GetPicklistValuesIndustry extends LightningElement {
    industryOptions =[];
    selectedIndustry;
    defaultRtId;
    @wire(getObjectInfo,{objectApiName: ACCOUNT_OBJECT} )
    objectInfoHandler({data, error}) {
       if(data){
        console.log(data);
        this.defaultRtId = data.defaultRecordTypeId;

       }
       if(error){
        console.error(error);
       }
    }  
  @wire(getPicklistValues, {fieldApiName:INDUSTRY_FIELD,recordTypeId:'$defaultRtId'})
  picklistHandler({data,error}){
    if(data){
        console.log(data);
        this.industryOptions = this.picklistGenerator(data);
    }
    if(error){
        console.error(error);
    }
  }

  picklistGenerator(data){
    return data.values.map(item => ({
        label : item.label,
        value : item.value
    }))
  }

  industryChangeHandler(event){
   this.selectedIndustry=event.target.value;
  }
}