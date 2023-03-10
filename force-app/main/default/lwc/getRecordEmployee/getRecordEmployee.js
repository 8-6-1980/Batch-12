import { getRecord } from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';

export default class GetRecordEmployee extends LightningElement {
    recordId = 'a0ADo000000i9nBMAQ';
    employeeId;
    employeeName;
    designation;
    gender;
    email;
    userName;
    phoneNumber;

    @wire(getRecord, {recordId:'$recordId',layoutTypes: ['Full'], modes:['View']})
    recordHandler({data,error}){
        if(data){
            console.log(data);
            // Approach 1
            this.employeeId = data.fields.Name.value;
            this.EmployeeName = data.fields.Employee_Name__c.value;
            this.designation = data.fields.Designation__c.value;
            this.gender = data.fields.Gender__c.displayValue;
            this.email = data.fields.Email__c.value;
            this.userName = data.fields.Username__c.value;
            this.phoneNumber = data.fields.Phone__c.value;

            
        }
        }
        if(error){
            console.error(error)

            }
        }
    

