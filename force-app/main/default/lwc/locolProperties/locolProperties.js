import { LightningElement } from 'lwc';

export default class LocolProperties extends LightningElement {
    name; //undefined
    age = 30;
    fullname = "Hicran Guner";
    location = {
        city :"California",
        country : "United States",
        postalCode : "92602"
    }
    fruits = ["Strawberry", "Apple" ,"Banana"];
}