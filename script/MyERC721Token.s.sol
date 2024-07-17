// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MyERC721Token} from "../src/MyERC721Token.sol";

contract MyERC721TokenScript is Script {
    MyERC721Token public my721token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        my721token = new MyERC721Token(msg.sender);
        console.log("MyERC721Token deployed to:", address(my721token));

        vm.stopBroadcast();
    }
}
