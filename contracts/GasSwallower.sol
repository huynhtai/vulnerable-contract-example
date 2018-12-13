
contract GasSwallower {

	constructor() {

	}

	// this function will fire all given gas.
	function() payable {
		assert(1 == 2);
	}
}