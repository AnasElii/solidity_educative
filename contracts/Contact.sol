// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Contact
 * @dev Store & retrieve contacts of friends and family
 */
contract Contact {

    address public owner;

    uint256 public number;
    string name; // if the scop didn't specified the solidity will make it private by default

    constructor() {
        owner = msg.sender;
    }

    /**
     * @dev Save new contact
     * @param number_ number of contact to store
     * @param name_ name of contact to store
     */
    function send(uint256 number_, string calldata name_) public {
        number = number_;
        name = name_;
    }

}