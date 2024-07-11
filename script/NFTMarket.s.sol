// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {NFTMarket} from "../src/NFTMarket.sol";

contract CounterScript is Script {
    NFTMarket public nftmarket;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // mytoken = new Market(msg.sender);
        // console.log("MyERC20Token deployed to:", address(mytoken));

        vm.stopBroadcast();
    }
}
