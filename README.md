<p><strong> OOP MTA - The NYC Subway System </strong></p>
<p><strong>Goal</strong></p>
<p>The goal with this workshop is to apply all the knowledge we have learned so far in ruby. You will need to apply your knowledge of command line applications (gets.chomp,ARGV), OOP (Classes), Requires (Require ‘./’), and just general problem solving and planning.</p>

<p><strong>Background</strong></p>
<p>There are 3 subway lines:</p>
<ul>
<li>The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th</li>
<li>The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st </li>
<li>The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.</li>
 </ul>
 
<p>All 3 subway lines intersect at Union Square, but there are NO other intersection points.</p>
<p><strong>Features</strong></p>
<p>A user can list the available lines.
ruby mta.rb lines
N
L
6</p>
<p>A user can see all of the stops for a line.
ruby mta.rb stops L
8th, 6th, union_square, 3rd, 1st</p>
<p>A user can calculate the total number of stops between two stations.
ruby mta.rb calculate L union_square 6 33rd
3
 ruby mta.rb calculate L union_square L 8th
 2</p>
<p>A user is notified if they don’t provide the correct number of arguments.
ruby mta.rb calculate sadasd</p>
<p><strong>Structure</strong></p>
<p>You should have two files. One called mta.rb and the other called structure.rb</p>
<p>Your mta.rb will be where you process all the commands from a users input</p>
<p>Your structure.rb will be where you have your classes and methods.</p>

