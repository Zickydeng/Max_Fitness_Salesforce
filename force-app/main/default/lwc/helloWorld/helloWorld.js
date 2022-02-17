import { LightningElement, track } from 'lwc';

export default class HelloWorld extends LightningElement {
    @track greeting='Zicky';
    changeHnadler(event)
    {
        this.greeting = event.target.value;
    }
}