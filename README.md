# Tetris
The following is a submission for the second OOP assignment

# Concept
Towards the end of the first semester of the 2016/2017 academic year to design a game. I (Robert) began to ponder as to what would be a perfect game to highlight OOP concepts learned in the first half of the year long OOP module. I felt that the game should not only complex task to design but also something I had a passion in. After some time, I came to the conclusion that Tetris would be the perfect candidate.

# Why
Tetris is a tile-matching puzzle video game and was the first entertainment software exported from the USSR. When Tetris finally made its way to the Nintendo Entertainment System, the game became apart of a elite grouping of games that created interest in the video-game market across worldwide territories. The games simplistic yet restrictive rules create memorable enjoyment for a majority of players thus became a classic. I believed trying to recreate such a classic would be a interesting challenge to understake.

#Controls

* LEFT and RIGHT keys to naviagte left and right
* DOWN to navigate down
* UP to navigate upwards
* ENTER choose a menu option  / Enter valuus

* W - Rotatate Shape
* A - Move Shape left
* D - Move Shape right
* A - Move Shape left
* S - Push shape downwards
* SPACE - Force shape to go to the last position

# Features

* Menu
  * The menu contains 4 options: Play the game, Controls, Leaderboard and an option to exit the game

* Game
  * The game contains 7 tetris shapes which are randomly chosen to be generated. When a shape is drawn, a user has control of its movement. However the player moves / rotatates the shape, colision detection with prevent the shape from falling out of bounds and colliding into a shape. Once a shape is dead, it is saved so it can be redrawn on screen and the area the shape consumes cannot be taken by any other shape.

* Leaderboard
  * 

* Controls
  * 

# Key Notes

* Dynamic algorithm that handles colision for all shapes (No hard code)
* Refacturing code to prevent hard coding
* Status class host private fields for it is senitive data
* A branch known as 'test' was created to refacture code by 400 lines
* Lerp fade in affect at the start of the game
* Tetris animation when sound is played
* Interface for necessary methods
* Polymorphism with ArrayLists
* File I/O with Leaderboard
* User input with entering their game name
* Commit failure fix (fix branch)
* PVectors to store cell and shape co-ordinates