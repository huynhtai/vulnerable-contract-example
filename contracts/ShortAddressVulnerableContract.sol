contract ShortAddressVulnerableContract {
	event LogTransfer(address, uint);

	constructor() public {

	}

	function() payable external {

	}

	function transfer(address _destAddress, uint _amount) external {
		require(address(this).balance >= _amount);
		_destAddress.transfer(_amount);
		emit LogTransfer(_destAddress, _amount);
	}
}