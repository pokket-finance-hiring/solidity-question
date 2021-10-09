import { ethers } from "hardhat";
import { assert, expect } from "chai";
import { Contract } from "@ethersproject/contracts";  


describe("SimpleGame", function () { 
  let randomizerLib: Contract; 
  let simpleGame: Contract; 
  before(async function () { 
    const Randomizer = await ethers.getContractFactory("Randomizer");
    randomizerLib = await Randomizer.deploy();
 
     const SimpleGame = await ethers.getContractFactory("SimpleGame", {
      libraries: { 
        Randomizer: randomizerLib.address
        }
     });
    simpleGame = await SimpleGame.deploy();
  });

  describe("Play", () => {
    it("Play 10 moves", async function () {
       simpleGame.setup();
       simpleGame.play(10);
    });
  });   
});