// Allen ISD Computer Science Assignment
// Non-sequential Project | multiplicationTable
// Sarah Anderson
// Computer Science II, Period 7
// 2018.02.08


/*
  You're responsible for printing a grid displaying a multiplication table.
  The single argument on the command line will specify the size of the grid.
  For example, if the program is invoked as:, ./multiplicationTable 3 
  Your output should be:
       1   2   3
  1    1   2   3
  2    2   4   6
  3    3   6   9

  You may assume that the maximum grid size is 20.

  Be sure that the numbers in your grid are aligned (i.e. columns are flush right)
  For example:
      3
      6
      9
     12

  Include an assert statement for each assumption that you are making.

*/

// Continue with your code here

assert(CommandLine.arguments.count == 2, "Exactly one argument required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")
assert(Int(CommandLine.arguments[1])! <= 20, "Argument must be 20 or less") 

var numberEntered = Int(CommandLine.arguments[1])!
var limit = numberEntered

func printer(int: Int){

    if(int < 10){
        print(" ", int)
    }
}

print("  ", terminator:"")
for i in 1...numberEntered{
    print(i, terminator:"  ")
}
print("")


for i in 1...numberEntered{
    print(i, terminator:"  ")
    for a in 1...numberEntered{
        print( i * a, terminator:"  ")
    }
    print("")
}
