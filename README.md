# Tetris
The following is a submission for the second OOP assignment

# You Tube

[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/pcpbPGe3xXg/0.jpg)](https://www.youtube.com/watch?v=pcpbPGe3xXg)

#Resonings

## Concept
Towards the end of the first semester of the 2016/2017 academic year to design a game. I (Robert) began to ponder as to what would be a perfect game to highlight OOP concepts learned in the first half of the year long OOP module. I felt that the game should not only complex task to design but also something I had a passion in. After some time, I came to the conclusion that Tetris would be the perfect candidate.

## Why
Tetris is a tile-matching puzzle video game and was the first entertainment software exported from the USSR. When Tetris finally made its way to the Nintendo Entertainment System, the game became apart of a elite grouping of games that created interest in the video-game market across worldwide territories. The games simplistic yet restrictive rules create memorable enjoyment for a majority of players thus became a classic. I believed trying to recreate such a classic would be a interesting challenge to undertake.

In terms of a challenge, one could can claim that the designing of a game such a Tetris, requires a developer to take into account the movement of of shapes and how they are handled, even when they are marked dead. 

# Features

* Menu
  * The menu contains 4 options: Play the game, Controls, Leaderboard and an option to exit the game

* Game
  * The Tetris game

* Leaderboard
  * A leaderboard that tracks player scores

* Controls
  * A page that displays all appropriate controls

#Controls

* LEFT and RIGHT keys to naviagte left and right
* DOWN to navigate down
* UP to navigate upwards
* ENTER choose a menu option  / Submit name
* B - Returns to menu from page

* W - Rotatate Shape
* A - Move Shape left
* D - Move Shape right
* A - Move Shape left
* S - Push shape downwards
* SPACE - Force shape to go to the last position

# Functionality

* Menu
  * The menu contains 4 options: Play the game, Controls, Leaderboard and an option to exit the game. This allows a user to filer through all the different options at there 

* Game
  * The game contains 7 tetris shapes which are randomly chosen to be generated. When a shape is drawn, a user has control of its movement. However the player moves / rotatates the shape, colision detection with prevent the shape from falling out of bounds and colliding into a shape. Once a shape is dead, it is saved so it can be redrawn on screen and the area the shape consumes cannot be taken by any other shape. Once a shape cannot be generated due to lack of space. A GAME OVER screen appears informing the user of their final score. The user can then enter their username and submit the score to the leader board.

* Leaderboard
  * A .csv file stores all the games score history. This is loaded into a table followed by an array list. When a user wish to display the leader board, a page appears. The page allows the user to cycle through every score ever recorded rather than just a plain list showing the top ten scores.

* Controls
  * The controls page is similar to the Leaderboard where they are multiple pages of it. Each 'page' shows the controls for each unique gameplay instance. Therefore an 'e-Manual' is thus created for the user.
  
# Key Notes  

* Dynamic algorithm that handles colision for all shapes (No hard code)
* Status class host private fields for it is senitive data
* A branch known as 'test' was created to refacture code by 400 lines to end hard-coded shape rotations
* Lerp fade in affect at the start of the game
* Tetris animation when sound is played
* Interface for necessary method signatures
* Polymorphism with ArrayLists
* File I/O with Leaderboard
* User input with entering their game name
* Commit failure fix (fix branch)
* PVectors to store cell and shape co-ordinates
* Sound generated
* Fully Scalable

#Code

* [Shape Rotation Algoritm](https://github.com/robertjwvaughan/Tetris/blob/master/Shapes.pde#L244)
* [Border check](https://github.com/robertjwvaughan/Tetris/blob/master/Square.pde#L122)
* [Check to see if there are full lines within the code](https://github.com/robertjwvaughan/Tetris/blob/master/Tetris.pde#L423)
* [Sort LeaderBoard](https://github.com/robertjwvaughan/Tetris/blob/master/Status.pde#L402)