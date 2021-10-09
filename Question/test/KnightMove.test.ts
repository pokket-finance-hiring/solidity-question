import { ethers } from "hardhat";
import { assert, expect } from "chai";
import { Contract } from "@ethersproject/contracts";  


describe("KnightMove", function () { 
  let knightMove: Contract;
  before(async function () {
     
    const KnightMove = await ethers.getContractFactory("KnightMove" );
    knightMove = await KnightMove.deploy(); 
  });

  describe("MoveFromInsideBoard", () => {
    it("Move from the insider of board should work", async function () {
      
      var pos =  { X:3, Y:3};
      var moves = await knightMove.validMovesFor(pos);
      assert.equal(moves.length, 8);
      moves.forEach( move => {
        var diff = Math.abs(move.X - pos.Y);
        if (diff == 1){
          assert.equal(2, Math.abs(move.Y - pos.Y));
        }
        else if (diff == 2){
          assert.equal(1, Math.abs(move.Y - pos.Y));
        }
        else{
          expect.fail();
        }
      });
    });
  });
    
  describe("MoveFromCorner", () => {
    it("Move from the boarder of board should work", async function () {
      
      var pos =  { X:1, Y:1};
      var moves = await knightMove.validMovesFor(pos);
      assert.equal(moves.length, 2);
      var possibles = [{X:2, Y:3}, {X:3, Y:2}];
      moves.forEach( move => {
        assert.isNotNull(possibles.find(m=>m.X == move.X && m.Y == move.Y));
      });
    });
  });

});
