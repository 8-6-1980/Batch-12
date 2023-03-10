import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

export default class GetCaseRecord extends LightningElement {
    recordId='500Do000001cOdkIAE';
    subject;
    priorty;
    status;
    caseNumber;

    @wire(getRecord,{recordId:'$recordId',layoutTypes: ['Full'], modes:['View']})
    caseRecordHandler({data,error}){
        if(data){
            console.log(data);
            this.subject = data.fields.Subject.value;
            this.priorty = data.fields.Priorty.value;
            this.status = data.fields.Status.value;
            this.caseNumber = data.fields.CaseNumber.value;
        }
        if(error){
            console.log(error);
        }
    }
}