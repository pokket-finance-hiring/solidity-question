//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
library SystemTypes {
    // vault is a struct of 6 arrays that describe a position a user has, a user can have multiple vaults.
    struct Position { 
        uint X;
        uint Y;
    }    
    struct Diff { 
        int X;
        int Y;
    }

    /*function toString(Position memory _pos) public view returns(string memory){
         
    }*/
}