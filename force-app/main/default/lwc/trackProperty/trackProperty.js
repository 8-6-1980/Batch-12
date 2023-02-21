import { LightningElement , track } from 'lwc';

export default class TrackProperty extends LightningElement {
  
    @track location = {
        city: "California",
        country: "United States",
        postalCode:"92602"
    }
    changeHandler(event) {
        this.location.city = event.target.value;
    }
}