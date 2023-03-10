import { getObjectInfos } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import ACC_OBJECT from '@salesforce/schema/Account';
import OPP_OBJECT from '@salesforce/schema/Opportunity';

export default class GetObjectInfosDemo extends LightningElement {
    accRtId;
    oppRtId;
    @wire(getObjectInfos, {objectApiNames: [ACC_OBJECT, OPP_OBJECT]})

    objectInfosHandler({data,error}){
       if(data){
        console.log(data);
        this.accRtId = data.results[0].result.defaultRecordTypeId;
        this.oppRtId = data.results[1].result.defaultRecordTypeId;

       }
       if(error){
        console.log(error);
       }
    }
}