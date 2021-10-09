//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
library Randomizer {

  function random(uint _modular) public view returns (uint) {
        // sha3 and now have been deprecated
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, _modular)));
        // convert hash to integer
        // players is an array of entrants
        
    }
}