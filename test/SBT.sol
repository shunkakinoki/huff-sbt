// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract SimpleStoreTest is Test {
    SBT public token;

    function setUp() public {
        token = SBT(HuffDeployer.deploy("SBT"));
    }

    function testName() public {
        assertEq(token.name(), "sbt");
    }

    function testSymbol() public {
        assertEq(token.symbol(), "SBT");
    }
}

interface SBT {
    function name() external view returns (string memory);

    function symbol() external view returns (string memory);
}
