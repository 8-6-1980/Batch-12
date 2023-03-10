import NAME_FIELD from '@salesforce/schema/Account.Name';
import TYPE_FIELD from '@salesforce/schema/Account.Type';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

const FIELDS =[NAME_FIELD,TYPE_FIELD,INDUSTRY_FIELD,REVENUE_FIELD];

export default class GetAccountRecord extends LightningElement {
   recordId ="001Do000003Dzg0IAC";
   account;

   
    @wire(getRecord, {recordId:'$recordId', fields:FIELDS })
    accountInfoHandler({data,error}){
        if(data){
            console.log(this.account);
            this.account =data;
        }
        if(error){
            console.error(error);
            
        }
    }
}