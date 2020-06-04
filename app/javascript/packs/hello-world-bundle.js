import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/components/HelloWorld';
import Message from '../bundles/HelloWorld/components/Message';

console.log(Message);
console.log(HelloWorld);

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld
});
ReactOnRails.register({
  Message
});
