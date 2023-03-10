import { LightningElement, track, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import {getRecords} from 'lightning/uiRecordApi';
export default class GetRecordSameObject extends LightningElement {
    @track accounts;
    @wire(getRecords, {
        records: [
            {
            recordIds:["001Do000003DzfxIAC","001Do000003Dzg2IAC"],
            fields: [NAME_FIELD,TYPE_FIELD],
            obtinalFields: [INDUSTRY_FIELD]
            }
        ]
    })
    recordsHandler({data,error}){
        if(data){
            console.log(data);
            this.accounts =data.results;
        }
        if(error){
            console.log(error);
        }
    }
}