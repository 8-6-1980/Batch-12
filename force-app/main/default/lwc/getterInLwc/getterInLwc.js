import { LightningElement } from 'lwc';

export default class GetterInLwc extends LightningElement {

    number1 = 35;
    number2 = 12;
    fruits = ["Apple", "Banana", "Orange","Strawberry"];

    get firstFruits(){
       return  this.fruits[0];
    }
    get sumOfNumber(){
        return this.number1 + this.number2;
    }
}