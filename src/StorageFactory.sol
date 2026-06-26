// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    // Custom errors
    error InvalidIndex(uint256 index);

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContract = new SimpleStorage();
        simpleStorageArray.push(simpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        require(_simpleStorageIndex < simpleStorageArray.length, InvalidIndex(_simpleStorageIndex));
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) external view returns (uint256) {
        require(_simpleStorageIndex < simpleStorageArray.length, InvalidIndex(_simpleStorageIndex));
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}