// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {NFTMarket} from "../src/NFTMarket.sol";

contract NFTMarketScript is Script {
    NFTMarket public nftmarket;
    address public mytokenAddress;
    address public my721tokenAddress;

    function setUp() public {
        // 设置已部署的合约地址
        mytokenAddress = 0xd557Bf08136D90ed553b882Eb365e0F6b9728bB1;
        my721tokenAddress = 0xC39B0eE94143C457449e16829837FD59d722933C;
    }

    function run() public {
        vm.startBroadcast();

        // 部署 NFTMarket 合约，传入已部署的 mytoken 和 my721token 地址
        nftmarket = new NFTMarket(mytokenAddress, my721tokenAddress);
        // 使用 console.log 打印合约地址
        console.log("NFTMarket deployed to:", address(nftmarket));

        vm.stopBroadcast();
    }
}
