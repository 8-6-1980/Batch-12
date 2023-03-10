import { LightningElement, wire } from 'lwc';
import{getRecords} from 'lightning/uiRecordApi';
import ACCNAME_FIELD from '@salesforce/schema/Account.Name';
import ACCINDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import CONNAME_FIELD from '@salesforce/schema/Contact.Name';
import CONTITLE_FILED from '@salesforce/schema/Contact.Title';


export default class GetRecordsMultipleObjects extends LightningElement {
    @wire(getRecords, {
        records:[
            {
               recordIds: ["001Do000003DzfxIAC","001Do000003Dzg2IAC"],
               fields:[ACCNAME_FIELD,ACCINDUSTRY_FIELD] 
            },
            {
                recordIds: ["003Do000002Pq02IAC","003Do000002PpzmIAC"],
                fields:[CONNAME_FIELD,CONTITLE_FILED] 
             }
        ]
    })
    recordsHandler({data,error}){
        if(data){
            console.log("multiple" ,data);
        }
        if(error){
            console.error(error);
        }
    }

}