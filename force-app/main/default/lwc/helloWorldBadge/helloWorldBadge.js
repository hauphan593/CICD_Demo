import { LightningElement } from 'lwc';

export default class HelloWorldBadge extends LightningElement {
    getDate = 'this is where date was';
    editedClick () {
        getDate = Date.now();
        console.log('this is feature');
        console.log('this is feature update at 1743-250319');
        console.log('this is feature update at 1754-250319');
    }

}
