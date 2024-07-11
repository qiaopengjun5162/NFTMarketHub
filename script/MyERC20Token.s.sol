// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {MyERC20Token} from "../src/MyERC20Token.sol";

contract CounterScript is Script {
    MyERC20Token public mytoken;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        mytoken = new MyERC20Token(msg.sender);
        console.log("MyERC20Token deployed to:", address(mytoken));

        vm.stopBroadcast();
    }
}
