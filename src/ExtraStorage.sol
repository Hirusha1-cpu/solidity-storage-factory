// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        // Owner check override කරන්න ඕන නම්
        require(msg.sender == owner, "Only owner can store");
        favoriteNumber = _favoriteNumber + 5;
    }
}