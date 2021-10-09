//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import "./cores/SimpleGame.sol";
import "./cores/ComplexGame.sol";

contract GameRunner {
    function runSimple() external {
      SimpleGame game = new SimpleGame(); 
      game.setup();
      game.play(10);
    }
        
    function runComplex() external {
      //ComplexGame game = new ComplexGame(); 
      //todo: Put your code here.
    }
}
 