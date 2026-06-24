// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {ExtraStorage} from "../src/ExtraStorage.sol";

contract ExtraStorageTest is Test {
    ExtraStorage public extraStorage;

    function setUp() public {
        extraStorage = new ExtraStorage();
    }

    function testStoreAddsFive() public {
        extraStorage.store(10);
        assertEq(extraStorage.favoriteNumber(), 15); // 10 + 5 = 15
    }
}