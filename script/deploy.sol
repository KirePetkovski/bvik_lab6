// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Script} from "forge-std/Script.sol";
import {lab6_NFT} from "../contract/lab6_NFTs.sol";
//import {console} from "forge-std/console.sol";

//contract DeployBasicNft is Script {
//    uint256 public DEFAULT_ANVIL_PRIVATE_KEY = ;
//    uint256 public deployerKey;

//    function run() external returns (BasicNft) {
//        if (block.chainid == 31337) {
//            deployerKey = DEFAULT_ANVIL_PRIVATE_KEY;
//        } else {
//           deployerKey = vm.envUint("PRIVATE_KEY");
//        }
//        vm.startBroadcast(deployerKey);
//        BasicNft basicNft = new BasicNft();
//        vm.stopBroadcast();
//        return basicNft;
//    }
//}