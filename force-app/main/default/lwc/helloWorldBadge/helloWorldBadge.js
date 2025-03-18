import { LightningElement } from 'lwc';

export default class HelloWorldBadge extends LightningElement {
    getDate = ''
       
    editedClick () {
        getDate = Date.now();
    }

}
