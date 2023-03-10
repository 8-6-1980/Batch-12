import getTopEmployees from '@salesforce/apex/EmployeeCtrl.getTopEmployees';
import { LightningElement, wire } from 'lwc';

const COLUMNS = [
    { label: 'Employee Name', fieldName: 'Name', type: 'text' },
    { label: 'Email', fieldName: 'Email__c', type: 'email' },
    { label: 'Designation', fieldName: 'Designation__c', type: 'text' },
    { label: 'Username', fieldName: 'Username__c', type: 'text' }
];

export default class WiredApexEmployee extends LightningElement {
    columns =COLUMNS;
    @wire(getTopEmployees)
    employees;
}