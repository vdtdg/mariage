const ethers = require('ethers');
const provider = ethers.getDefaultProvider();

provider.getBlockNumber()
	.then(blockNumber => {
		console.log("Block number : " + blockNumber);
	});
