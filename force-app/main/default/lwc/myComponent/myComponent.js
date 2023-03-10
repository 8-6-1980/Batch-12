import { LightningElement, track } from 'lwc';
import { updateRecord } from 'lightning/uiRecordApi';

export default class MyComponent extends LightningElement {
    @track recordId;
    @track field1;
    @track field2;

    handleRecordIdChange(event) {
        this.recordId = event.target.value;
    }

    handleField1Change(event) {
        this.field1 = event.target.value;
    }

    handleField2Change(event) {
        this.field2 = event.target.value;
    }

    updateRecord() {
        const fields = {};
        fields['AccountName'] = this.field1;
        fields['Phone'] = this.field2;

        const recordInput = { fields };
        recordInput.Id = this.recordId;

        updateRecord(recordInput)
            .then(() => {
                console.log('Record updated successfully');
                // Handle any additional logic after successful update
            })
            .catch(error => {
                console.error(error);
                // Handle any errors that occur during the update process
            });
    }
}
