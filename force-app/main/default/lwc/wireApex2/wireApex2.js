import getTopOpportunities from '@salesforce/apex/OpportunityCtrl.getTopOpportunities';
import { LightningElement, wire } from 'lwc';


export default class WireApex2 extends LightningElement {
    stageName = "Closed Won";

    @wire(getTopOpportunities, {stage:'$stageName'})
    opportunities;
}