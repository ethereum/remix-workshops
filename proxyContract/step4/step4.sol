contract complex{
	address add;
	uint aa;
	uint bb;

	function thrower()
	{
		throw;
	}
	function toggle() returns(uint){
		if (aa > 0) aa=0;
		else aa =1;
		if (bb > 0) bb=0;
		else bb = 1;
		return 0x1337;
	}
}

contract proxy{
	address add;
	uint aa;
	uint bb;
	
	function proxy(address a){
		add = a;
	}
	function (){
		assembly{

			//gas needs to be uint:ed
			let g := and(gas,0xEFFFFFFF)
			let o_code := mload(0x40) //Memory end
			//Address also needs to be masked
			//Also, important, storage location must be correct
			// sload(0) is dependant on the order of declaration above
			let addr := and(sload(0),0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF) //Dest address
			//Get call data (method sig & params)
			calldatacopy(o_code, 0, calldatasize)
			//callcode(
			let retval := call(g
				, addr //address
				, 0 //value
				, o_code //mem in
				, calldatasize //mem_insz
				, o_code //reuse mem
				, 32) //We expect no return data
				
			// Check return value
			// 0 == it threw, so we do aswell by jumping to 
			// bad destination (02)
			jumpi(0x02,iszero(retval))

			// return(p,s) : end execution, return data mem[p..(p+s))
			return(o_code,32)
		}
	}
}