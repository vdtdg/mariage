const ethers = require('ethers');
const provider = ethers.getDefaultProvider();
const utils = require('ethers').utils;

let transferEvent = [
    "event Transfer(address indexed _from, address indexed _to, uint256 _value)"
];
let contractAddress = "0x174BfA6600Bf90C885c7c01C7031389ed1461Ab9";
let contract = new ethers.Contract(contractAddress, transferEvent, provider);

provider.on('block', (res) => { console.log('Nouveau bloc. ID = ' + res); });
contract.on('Transfer', (from, to, value) => {
	console.log("    | Transfer de " + utils.formatEther(value, {commify: true, pad: true}) + " MGC de " + from + " à " + to + ".");
});


