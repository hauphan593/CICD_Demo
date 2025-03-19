import { LightningElement } from 'lwc';

export default class HelloWorldBadge extends LightningElement {
    getDate = 'this is where date was';
    editedClick () {
        getDate = Date.now();
        console.log('this is feature');
        console.log('this is feature 2');
        console.log('this is feature 3');
    }

}
