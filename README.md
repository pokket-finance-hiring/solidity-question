# Chess Question

## Abstract
You have been provided with a third-party library `libraries` which calculates the legal moves a knight can make given a position on an ![8\times8](https://latex.codecogs.com/svg.latex?8%5Ctimes8) board. The library has been used to create a GameRunner which moves a knight randomly around a board, given an initial starting position and a total number of moves to make.

## Problem
Extend this GameRunner to set up an ![8\times8](https://latex.codecogs.com/svg.latex?8%5Ctimes8) square game board containing several different pieces in predefined positions.(by implementing the ComplexGame contract and implement runComplex where it's used)
For each move of the game, the GameRunner will choose a piece at random, and move it to a randomly selected valid position.

You are not allowed to change any of the `libraries` code.
 
Extend the GameRunner and contracts involved as required. 
* Use Object Oriented Design and Modeling appropriately for extensibility.
* Make the contracts easily upgradable, take, if we want to add more chess types, we don't need to re-deploy the old game contracts.
* Implement the deployment process in deploy.ts
* Add more unit tests if needed

## Game Rules
* Only one piece can occupy any position on the board at a given time.
* All pieces can “jump” any occupied position.

*__Note__*: Although the game bears a striking resemblance to Chess, this is entirely coincidental. Do not assume other chess rules apply.

## Game Pieces to support:
* Knight - Moves as implemented by libraries
* Bishop - Moves diagonally, any distance within board boundaries
* Queen – Moves diagonally, horizontally or vertically, any distance within board boundaries


