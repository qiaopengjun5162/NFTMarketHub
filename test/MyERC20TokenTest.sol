// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MyERC20Token} from "../src/MyERC20Token.sol";

contract MyERC20TokenTest is Test {
    MyERC20Token public mytoken;

    address public owner = address(0x1);

    address public alice = address(0x2);
    address public bob = address(0x3);
    address public charlie = address(0x4);

    function setUp() public {
        mytoken = new MyERC20Token(owner);

        vm.startPrank(owner);

        mytoken.mint(alice, 100);
        mytoken.mint(bob, 200);
        mytoken.mint(charlie, 300);
        vm.stopPrank();
    }

    function testBalanceOf() public view {
        assertEq(mytoken.balanceOf(owner), 0);
        assertEq(mytoken.balanceOf(alice), 100);
        assertEq(mytoken.balanceOf(bob), 200);
        assertEq(mytoken.balanceOf(charlie), 300);
    }

    function testName() public view {
        assertEq(mytoken.name(), "MyERC20Token");
    }
    function testSymbol() public view {
        assertEq(mytoken.symbol(), "MTKERC20");
    }
    function testDecimals() public view {
        assertEq(mytoken.decimals(), 18);
    }

    function testMint() public {
        vm.startPrank(owner);
        mytoken.mint(owner, 1000);
        assertEq(mytoken.balanceOf(owner), 1000);
        vm.stopPrank();
    }

    function testTransfer() public {
        vm.startPrank(alice);
        mytoken.transfer(bob, 50);
        assertEq(mytoken.balanceOf(alice), 50);
        assertEq(mytoken.balanceOf(bob), 250);
        vm.stopPrank();
    }

    function testApprove() public {
        vm.startPrank(alice);
        mytoken.approve(bob, 50);
        assertEq(mytoken.allowance(alice, bob), 50);
        vm.stopPrank();
    }
}
