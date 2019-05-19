const ethers = require('ethers'); 
const provider = ethers.getDefaultProvider(); // homstead (mainnet)

provider.on('block', (blockNumber) => {
    console.log('-- New Block: ' + blockNumber);
});

