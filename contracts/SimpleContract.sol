// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SimpleContract{
    constructor() payable{}
    receive() external payable{}
    function getBalance() public view returns (uint){
        return address(this).balance;

    }

    function sendViaCall() public payable{

        (bool sent, ) = (msg.sender).call{value:10000}("");
        require (sent, "call failed");
    }

    function getMyBalance() public view returns (uint){
        return (msg.sender).balance;
    }


}
