// Allen ISD Computer Science Assignment
// Non-sequential Project | simpleATM
// Sarah Anderson
// Computer Science II, Period 7
// 2018.02.08


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 20.
  You must print one line indicating that a $20 bill was dispensed for every bill dispensed.

  For example, if the program is invoked as:  ./simpleATM 60
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed

*/



// The following assertions make clear the assumptions that your program is making
assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")


// Read the integer value from the command line.
// Note that we've verified above, via the assertions, that we definitely have an integer argument
let dollarValueRequested = Int(CommandLine.arguments[1])!
assert(dollarValueRequested % 20 == 0, "Dollar value requested must be evenly divisible by $20.00")

// We can use string interpolation to display a single string with substituted values
print("ATM will now dispense $20.00 bills to deliver the sum of $\(dollarValueRequested).00")

// Continue with your code here

var TwentiesDispensed = Int(CommandLine.arguments[1])!

TwentiesDispensed = dollarValueRequested / 20

while( TwentiesDispensed > 0) {
    print("$20.00 dispensed")

    TwentiesDispensed -= 1;
}
