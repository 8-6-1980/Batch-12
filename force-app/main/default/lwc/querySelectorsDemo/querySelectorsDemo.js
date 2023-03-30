import { LightningElement } from 'lwc';

export default class QuerySelectorsDemo extends LightningElement {

    fruits = ["Orange", "Apple", "Banana","Kiwi"];

    clickHandler() {
        // querySelector demo
        const headerElem = this.template.querySelector('h1');
        console.log(headerElem.innerText);
        headerElem.style.border='3px solid black';
        headerElem.style.backgroundColor = 'yellow';
        headerElem.style.color = 'solid blue';

        const pElem = this.template.querySelector('p');
        console.log(headerElem.innerText);
       pElem.style.border='3px solid black';
       pElem.style.backgroundColor = 'aqua';
       pElem.style.color = ' solid black';

    //    querySelectors demo
    const divElems = this.template.querySelectorAll('div.child');
    divElems.forEach(element => {
        console.log(element.innerText);
        element.style.border = '2px solid yellow';
        element.style.backgroundColor = 'green';
        element.setAttribute('class','slds-align_absolute-center');
    });

    }
}