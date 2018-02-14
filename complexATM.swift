// Allen ISD Computer Science Assignment
// Non-sequential Project | complexATM
// Sarah Anderson
// Computer Science II, Period 7
// 2018.02.12


/*
  You're responsible for dispensing money from an ATM.  
  The ATM can only dispense $5 and $20 bills.
  
  The command line will specify the total dollar value to withdraw which must be 
  divisible by 5.
  You must print one line indicating that either a $5 or $20 bill was dispensed
  for each bill dispensed.

  For example, if the program is invoked as:  ./complexATM 75
  Your output should be:
  $20.00 dispensed
  $20.00 dispensed
  $20.00 dispensed
  $5.00 dispensed
  $5.00 dispensed
  $5.00 dispensed

  Include an assert statement for each assumption that you are making.
*/

// Continue with your code here

assert(CommandLine.arguments.count == 2, "Exactly one argument is required")
assert(Int(CommandLine.arguments[1]) != nil, "Argument must be an integer")
var  dollarsRequested = Int(CommandLine.arguments[1])!
assert(dollarsRequested % 5 == 0, "Dollar value requested must be evenly divisible by $5.00") 

while ( dollarsRequested >= 20 ) {
    print("$20.00 dispensed")

    dollarsRequested -= 20;
}

while ( dollarsRequested > 0 ) {
    print("5.00 dispensed")

    dollarsRequested -= 5;
}

