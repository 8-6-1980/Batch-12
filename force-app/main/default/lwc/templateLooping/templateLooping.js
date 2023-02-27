import { LightningElement } from 'lwc';

export default class TemplateLooping extends LightningElement {
    carTypes =["Ford", "Audi","Mercedes","Maruti","Hyundai"];

    contacts =[
        {
            id: 1,
            firstname : "Mehmet",
            lastname : "Guner"

        },
        {
            id: 2,
            firstname : "Halil",
            lastname : "Guner"

        }
    ];
}