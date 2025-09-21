// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import "forge-std/console.sol";
import {FOXNFTCollection} from "../src/FOXNFTCollection.sol";

contract DeployNFTCollection is Script {
    function run() external {
        string memory name_ = "Fox Society NFT";
        string memory symbol = "FOX";
        uint256 totalSupply_ = 2;
        string memory baseUri_ = "ipfs://bafybeia3qskm656d3krcvukeogxz45b4jhc6haaz7ozy4deivxjxpzv36a/";

        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        FOXNFTCollection nftCollection = new FOXNFTCollection(
            name_,
            symbol,
            totalSupply_,
            baseUri_
        );

        vm.stopBroadcast();

        console.log("Token desplegado en:");
        console.logAddress(address(nftCollection));
    }
}
