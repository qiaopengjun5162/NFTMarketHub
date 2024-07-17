// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MyERC20Token} from "../src/MyERC20Token.sol";

contract MyERC20TokenScript is Script {
    MyERC20Token public mytoken;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        mytoken = new MyERC20Token(msg.sender);
        console.log("MyERC20Token deployed to:", address(mytoken));

        vm.stopBroadcast();
    }
}
