// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/MyToken.sol";

contract DeployMyToken is Script {
    function run() external {
        vm.startBroadcast();

        new MyToken(1000e18); // Initial supply of 1000 tokens

        vm.stopBroadcast();
    }
}
