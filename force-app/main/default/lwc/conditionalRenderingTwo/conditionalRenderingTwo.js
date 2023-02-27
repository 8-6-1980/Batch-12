import { LightningElement } from 'lwc';

export default class ConditionalRenderingTwo extends LightningElement {
    showContent = false;

    clickHandler() {
       this.showContent = !this.showContent; 
    }
}