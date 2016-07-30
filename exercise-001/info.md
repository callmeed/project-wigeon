# Exercise 1

## Fizz Buzz Plus: Arrays, loops, ifs, math and some string interpolation

This is a very basic, getting started type of exercise. Much like the classic "Fizz Buzz" problem, but with a few extras.
If you consider yourself an experienced programmer, you _should_ know how to do this. The challenge is to learn how to do
it in a new language.

## Instructions

1. Initialize an array variable with the following Integers, which represent home values:
  - 725384
  - 610099
  - 499110
  - 1248357
  - 635702
  - 923237
  - 347682
  - 529385

2. Print out a message that states the size of the array
  - Example: _"There are currently X home values saved"_

3. Add the following 2 values to the end of the array (append)
  - 1536543
  - 724942

4. Print out a message with the new size of the array
  - Example: _"There are currently Y home values saved"_

5. Loop through each home value and print messages according to the following rules:
  - For EVERY value, print a message like _"Home 1. has an assessed value of $725384"_
  - Be sure the counter value in your messages starts at 1
  - Use string interpolation over concatenation (if your language supports it)
  - IF a value is divisible by 5, print another message _"WARNING: Home requires re-assessment"_
  - Include a blank line after each message BUT keep any warnings directly under its value message

6. Print the max and min home values with a message
  - Example: _"The max home value is $X and the min home value is $Y"_

7. Calculate and determine the mean home value as a rounded Integer and print a message
  - Example: _"The mean home value is $Z"_

## Notes

Your program should run from the command line. Name your file or executable "homes" (with extension if necessary). Include comments with any instructions on compiling/running.
