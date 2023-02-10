// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.7;

contract Whitelist {
    uint8 public maxWhitelistedAddresses;
    uint8 public numAddressesWhitelisted;

    mapping(address => bool) whitelistedAddress;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(
            !whitelistedAddress[msg.sender],
            "You are already in the whitelist"
        );
        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "max limit reached"
        );
        whitelistedAddress[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}
