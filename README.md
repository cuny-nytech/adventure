# Choose Your Own Adventure
Slavisa Djukic <Slavisa.Djukic15@myhunter.cuny.edu>

Oct. 4, 2014.

##Game title
This is my take on MUD ([Multi User Dungeons](https://en.wikipedia.org/wiki/MUD)) game. 

##Story
At the moment only game 'engine' is implemented with some items laying around in the world.
There are no NPC's and there is nothing that can be done with the items except pick
them up, hold them in hand or put them in backpack.

##How to Play
To run the game just run adventure file.
After initial screen where player will enter his/her name the game will start. 
Top right part of the screen, colored in blue, displays current player's status.
Middle of the screen is reserved for notifications and bottom is menu from which
player chooses actions. All interaction with the program is with four arrow keys.
Player can hold one item in hands and, at the moment, have unlimited number of
items in storage(backpack). 

###Actions menu
All actions a player can perform  are listed in blue on the bottom of the screen. Use
left, right arrow key to move between them. Action that is currently selected is white.
Some of the actions have a submenu, which will automatically appear once that action
is highlighted. Use up arrow key to select action/item, and down key to cancel it.
* Side of the world - move player in that direction
* "Pick Up" - player will take selected item and place it in "storage"
* "Take Out" - player will take selected item from the storage and hold it in hand, if
 hands are free.
* "Drop" - drop item held in hands in the location
* "Put Away" - place item held in hand into the storage
* "Quit" - quits the game

### Tools
[YAMLlint](http://yamllint.com/) is indispensable for creating syntactically good yaml files.
I used them for various game configuration files.
