OOP MTA - The NYC Subway System
Goal
The goal with this workshop is to apply all the knowledge we have learned so far in ruby. You will need to apply your knowledge of command line applications (gets.chomp,ARGV), OOP (Classes), Requires (Require ‘./’), and just general problem solving and planning.

DO NOT jump straight into the code. Take some time to plan and think about how this is all going to be structured.

Background
There are 3 subway lines:

The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
All 3 subway lines intersect at Union Square, but there are NO other intersection points.
Features
A user can list the available lines.
ruby mta.rb lines
N
L
6
A user can see all of the stops for a line.
ruby mta.rb stops L
8th, 6th, union_square, 3rd, 1st
A user can calculate the total number of stops between two stations.
ruby mta.rb calculate L union_square 6 33rd
3
 ruby mta.rb calculate L union_square L 8th
 2
A user is notified if they don’t provide the correct number of arguments.
ruby mta.rb calculate sadasd
You must provide the 4 arguments - STARTINGLINE STOP ENDINGLINE STOP
Structure
You should have two files. One called mta.rb and the other called structure.rb
Your mta.rb will be where you process all the commands from a users input
Your structure.rb will be where you have your classes and methods.
Think about how you are going to structure this using OOP
Some Options:
A single MTA class
A single MTA class and a Line(s) class
Others? Be creative! Looking forward to seeing all your solutions
Dont forget to require your structure.rb into your mta.rb so you can use your class(es)!
Keep in Mind
Spend some time planning how you will model your subway lines. Get some whiteboard markers and a partner and talk it out!
What data structure(s) will you use to represent the subway system?
Break it down and follow your errors! Maybe try getting the program to work for a single train line before trying to tackle multiple lines.
Reference the Ruby documentation for arrays and hashes. How can we grab the index number if we already know the value of an element inside an array?
Bonus
Add the following line without making major modifications to your code:
The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
Add the F line to your program.
The F line has the following stops: Rockefeller Center, 42nd St, Herald Square, 23rd St, 14th St, West 4th.
Herald Square should be your only transfer point!
