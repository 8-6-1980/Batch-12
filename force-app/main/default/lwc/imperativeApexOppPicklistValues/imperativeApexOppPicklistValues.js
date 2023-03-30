import { getObjectInfo, getPicklistValues } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';
import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';
import STAGENAME_FIELD from '@salesforce/schema/Opportunity.StageName';
import getOpportunitiesByStage from '@salesforce/apex/OpportunityCtrl.getOpportunitiesByStage';

export default class ImperativeApexOppPicklistValues extends LightningElement {
    stageOptions=[];
    selectedStage;
    @wire(getObjectInfo, {objectApiName: OPPORTUNITY_OBJECT})
    accountInfo;

    @wire(getPicklistValues, {fieldApiName :STAGENAME_FIELD , recordTypeId:'$accountInfo.data.defaultRecordTypeId'})
    picklistHandler({data,error}){
        if(data){
          console.log(data);
          this.stageOptions =this.picklistGenerator(data);
        }
        if(error){
          console.log(error);
        }
    }

    picklistGenerator(data) {
        return data.values.map(item=> ({
            label: item.label,
            value: item.value
        }));
    }
    stageHandler(event){
        this.selectedStage = event.target.value;
        getOpportunitiesByStage({stage:this.selectedStage})
        .then(result=> {
            this.opps =result
        })
        .catch(error => {
            this.error =error;
        })
    }
}