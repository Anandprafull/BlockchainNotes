const SHA256 = require('crypto-js/sha256');

const TARGET_DIFFICULTY = BigInt(0x0fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
const MAX_TRANSACTIONS = 10;

const mempool = [];
const blocks = [];

function addTransaction(transaction) {
    // TODO: add transaction to mempool
    mempool.push(transaction);
}

function mine() {
    // TODO: mine a block
    const blockObj={id:blocks.length};
    const stringBlockObj=JSON.stringify(blockObj);
    const hashStringBlockObj = SHA256(stringBlockObj);


        blockObj.hash=hashStringBlockObj.toString();
    blocks.push(blockObj);

}

module.exports = {
    TARGET_DIFFICULTY,
    MAX_TRANSACTIONS,
    addTransaction, 
    mine, 
    blocks,
    mempool
};
