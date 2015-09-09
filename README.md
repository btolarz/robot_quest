# robot_quest
Play with ruby.

There is a table 5x5.
Robot is moving on it.
Code prevent robot from fall from the table.

Comands:
* PLACE 0,0,(NORTH|EAST|SOUTH|WEST) - place robot on table, X,Y, position (NORTH|EAST|SOUTH|WEST) direction
* MOVE - move robot one step in current direction
* LEFT - turn left
* RIGHT - turn right
* REPORT - print current location

### Using
ruby ./app.rb [COMMANDS LIST]

Example
```
$ ruby ./app.rb PLACE 0,0,NORTH MOVE LEFT RIGHT REPORT
[0, 1, "NORTH"]
```
