# Run test
## Prerequisite: 
To run test, you need to install the following things: 
- truffle v4.1.14 
- ganache 1.2.2
### Setting ganache
Please config truffle as following:<br/>
1. 10 default account 
2. Each account should have at least 100 eth
3. The property `Error in transaction fail` must be set to `true`  
Cautions: The default port of ganache is 7545. If you change ganache port, please update the file truffle.js as follow: 

```javascript
require('babel-register');
require('babel-polyfill');
module.exports = {
   networks: {
       development: {
       host: "localhost",
       port: ${ganache-port},
       network_id: "*" // Match any network id
      }
 }
};
```


## How to run:
1. Start ganache 
2. go to folder of the project. 
3. Run npm install
4. Run command: truffle test
5. Get the result of all test cases.