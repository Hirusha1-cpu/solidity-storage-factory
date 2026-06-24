// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    event ContractCreated(address indexed contractAddress, uint256 index);
    event ValueStored(uint256 indexed index, uint256 value);

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContract = new SimpleStorage();
        simpleStorageArray.push(simpleStorageContract);
        emit ContractCreated(address(simpleStorageContract), simpleStorageArray.length - 1);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
