import REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

const FIELDS =[REVENUE_FIELD,INDUSTRY_FIELD,NAME_FIELD];
export default class GetRecordAccount extends LightningElement {
    recordId = '001Do000003Dzg2IAC';
    name;
    revenue;
    industry;
    @wire(getRecord, {recordId:'$recordId', fields:FIELDS})
    recordHandler({data,error}){
        if(data){
            this.name = getFieldValue(data, NAME_FIELD);
            this.revenue = getFieldDisplayValue(data, REVENUE_FIELD);
            this.industry = getFieldValue(data,INDUSTRY_FIELD);
        }
        if(error){
            console.error(error);
        }
    }
}