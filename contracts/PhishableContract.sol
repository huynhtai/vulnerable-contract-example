contract PhishableContract {
	address public owner;

	constructor (address _owner) {
		owner = _owner;
	}

	function () public payable {} // collect ether

	// This contract is vulnerable by using tx.origin
	function withdrawAll(address _recipient) public {
		require(tx.origin == owner);
		_recipient.transfer(this.balance);
	}
}