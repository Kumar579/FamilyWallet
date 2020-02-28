pragma solidity ^0.5.0;

contract owned {
    address payable owner;

    modifier onlyowner() {
  
        require(msg.sender == owner, "Owner is not the msg.sender");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }
}
