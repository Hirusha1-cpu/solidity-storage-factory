// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public favoriteNumber;
    address public owner;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    constructor() {
        owner = msg.sender;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        require(msg.sender == owner, "Only owner can store");
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    error InvalidIndex(uint256 index);
    error OnlyOwner();

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        require(_simpleStorageIndex < simpleStorageArray.length, InvalidIndex(_simpleStorageIndex));
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
