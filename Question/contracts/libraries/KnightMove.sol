//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import {SystemTypes} from "./SystemTypes.sol";
//import {SafeMath} from "@openzeppelin/contracts/utils/math/SafeMath.sol";


contract KnightMove {
    
    //using SafeMath for uint8;
 
    SystemTypes.Diff[] private Moves;

    constructor(){ 
       Moves.push(SystemTypes.Diff(1,2));
       Moves.push(SystemTypes.Diff(1, -2));
       Moves.push(SystemTypes.Diff(-1, 2));
       Moves.push(SystemTypes.Diff(-1, -2));
       Moves.push(SystemTypes.Diff(2, 1));
       Moves.push(SystemTypes.Diff(-2, 1));
       Moves.push(SystemTypes.Diff(2, -1));
       Moves.push(SystemTypes.Diff(-2, -1)); 
    }

    function validMovesFor(SystemTypes.Position memory _position) public view returns (SystemTypes.Position[] memory) {
         
        uint count = 0;
        for (uint i=0; i< Moves.length; i++) {
            int newX = int(_position.X) + Moves[i].X;
            int newY = int(_position.Y) + Moves[i].Y;
            if (newX > 8 || newX < 1 || newY > 8 || newY < 1){
                continue;
            }
            count++; 
        }
        SystemTypes.Position[] memory results = new SystemTypes.Position[](count);
        uint index = 0;
        for (uint i=0; i < Moves.length; i++) {
            int newX = int(_position.X) + Moves[i].X;
            int newY = int(_position.Y) + Moves[i].Y;
            if (newX > 8 || newX < 1 || newY > 8 || newY < 1){
                continue;
            }
           results[index] = SystemTypes.Position(uint(newX), uint(newY));
           index++;
        }
        return results;
    }
 
} 
 