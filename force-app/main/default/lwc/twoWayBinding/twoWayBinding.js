import { LightningElement } from 'lwc';

export default class TwoWayBinding extends LightningElement {

    fullname = 'Hicran';
    title = 'Salesforce Developer';

    changeHandler(event) {
        this.title = event.target.value;
        
    }

}