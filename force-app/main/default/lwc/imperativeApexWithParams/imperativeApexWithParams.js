import searchContacts from '@salesforce/apex/ContactController.searchContacts';
import { LightningElement } from 'lwc';

export default class ImperativeApexWithParams extends LightningElement {
    searchWord;
    contacts;
    error;
    
    searchHandler(event){
        this.searchWord =event.target.value;
        searchContacts({searchKey : this.searchWord})
        .then(result=> {
            this.contacts =result;
        })
        .catch(error => {
            this.error = error;
        })
    }
}