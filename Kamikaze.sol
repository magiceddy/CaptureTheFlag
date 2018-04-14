pragma solidity ˆ0.4.21;


/**
* @title Kamikaze contract
* @dev Use this contract to send value to target
*/
contract Kamikaze {

    /**
    * @params target address
    * @dev Send balance to target
    */
    function banzai(address target) public payable {
        selfdestruct(target);
    }
}
