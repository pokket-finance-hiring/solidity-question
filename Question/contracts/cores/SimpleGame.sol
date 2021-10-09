//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "../interfaces/IGame.sol";
import "../libraries/KnightMove.sol";
import "../libraries/SystemTypes.sol";
import "../libraries/Randomizer.sol"; 
import "hardhat/console.sol";
contract SimpleGame is IGame {

    SystemTypes.Position private position;

    function play(uint256 _moves) override external {
        KnightMove knight = new KnightMove();
        SystemTypes.Position memory currentPosition = position; 
        console.log("0: My Position is (%d,%d)", currentPosition.X, currentPosition.Y);
        for (uint i = 0; i < _moves; i++) {
            SystemTypes.Position[] memory possibles = knight.validMovesFor(currentPosition);
            uint r = Randomizer.random(possibles.length) % possibles.length; 
            currentPosition = possibles[r]; 
            console.log("%d: My Position is (%d,%d)", i, currentPosition.X, currentPosition.Y); 
        }
    }
    
    function setup() override external {
      position = SystemTypes.Position(3,3);
    }
}
