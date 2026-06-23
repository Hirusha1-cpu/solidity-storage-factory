// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function deploy() public returns (address) {
        SimpleStorage simpleStorage = new SimpleStorage();
        return address(simpleStorage);
    }
}