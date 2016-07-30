# Exercise 2

## Class and object basics and includes/requires

If you're learning a new language, you'll need to figure out the object-oriented
basics: syntax, constructors, sub-classing, and the like. Here's a quick
exercise that should help.

Also, its important to know how a language handles including/requiring multiple files.
There's some of that here (each class should be a separate file).

**NOTE:** If the language you're working in isn't object-oriented (such as Go),
do some research to determine the best-practices for abstraction in that language.

## Instructions

* Create a class Player to represent an NFL football player. The Player class
should have the following attributes/properties:
  - Name (String)
  - Jersey Number (Integer)
  - Active (Boolean)
  - Position (String or Enum if language supports it)
  - Height in Inches (Integer)
  - Weight (Integer)

**NOTE:** If the language supports Enums, position should be an enum of:
['QB', 'RB', 'WR', 'TE', 'OL', 'C', 'G', 'T', 'K', 'LB', 'DB', 'CB', 'S'].
If not, just use a string.

* The Player class should have a constructor/initializer that sets the name,
jersey number, and position. The Active attribute should default to `TRUE`.

* Create an instance method `heightString()` (or `height_string()`) that returns
a string of the player's height in feet and inches (like `6'3"`). If the player's
height is not set, return "N/A"

* Create a sub-class of Player called OffensivePlayer. It should have the following
additional attributes:
  - Receiving Yards (Integer)
  - Receiving Touchdowns (Integer)
  - Rushing Yards (Integer)
  - Rushing Touchdowns (Integer)
  - Fumbles (Integer)

* Create 2 methods "Total Yards" and "Total Touchdowns" for OffensivePlayer that
return the sum of the appropriate rushing/receiving values.

* Create a sub-class of OffensivePlayer called Quarterback. It should have the
following additional attributes:
  - Completions (Integer)
  - Attempts (Integer)
  - Passing Yards (Integer)
  - Interceptions (Integer)

* Create a method "Passer Rating" for the Quarterback class. It should calculate
the rating (as a Float/Double) using the formula here:
https://en.wikipedia.org/wiki/Passer_rating#NFL_and_CFL_formula

<!-- TODO: Finish with some object instantiation -->
* *MORE COMING SOON*

**NOTE:** Each class you create should be a separate file. Also, create a file `football`
that includes/requires the other files, does object instantiation and handles output.
