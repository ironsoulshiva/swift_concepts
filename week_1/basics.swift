/* 
let / var
Types
String
Int
Double
Bool
if
switch
for
while
functions
*/



// let cant be changed, var can be changed
/*
Q1. Which should be let and which should be var?

Your name
Your current steps
Your daily step goal
Today's calories
Your age
Your current weight
*/

/*
let yourName = "IronSoulShiva"
var currentSteps = 0
var dailyStepGoal = 10000
var todaysCalories = 9999
var yourAge = 25
var currentWeight = 70.5
*/

/*
What happens?

let targetSteps = 10000
targetSteps = 12000

Why?
*/
// The code will throw an error because 'targetSteps' is declared as a constant using 'let', which means its value cannot be changed after initialization. Attempting to assign a new value to 'targetSteps' will result in a compile-time error, indicating that you cannot assign to a value      

/*
Create:

name = "Shiva"
steps = 7500
goal = 10000

Print all three.
*/

/*
let name = "Shiva"
var steps = 7500
var goal = 10000

print("Name: \(name)")
print("Steps: \(steps)")
print("Goal: \(goal)")
*/

/*
What type should each variable have?

Q4
"Shiva" - String
28 - Int
78.5 - Double
true - Bool
10000 - Int
"Morning Walk" - String
false - Bool
5.8 - Double
*/

/*
Q5

Create these variables:

name
age
weight
isWorkoutCompleted

Give them sensible values.
*/

/*
let nameQ5 = "Shiva"
var age = 27
var weight = 70.5
var isWorkoutCompleted = false
*/

/*Q6

What's wrong here?

let age: Int = 28.5

Why can't Swift accept it?
*/
// The issue is that the value 28.5 is a Double, but the variable 'age' is declared as an Int. Swift cannot implicitly convert a Double to an Int, so it throws a type mismatch error. To fix this, you should either change the value to an integer (e.g., 28) or change the type of 'age' to Double if you want to store decimal values.      

/*
Q7

Create:

name
steps
distance

Print:

My name is Shiva.
I walked 7500 steps.
I walked 5.2 km.

But build the message using variables.
*/

/*
let name07 = "Shiva"
var steps07 = 7500
var distance07 = 5.2

print("My Name is \(name07).")
print("I walked \(steps07) steps.")
print("I walked \(distance07) km.")
*/

/*
Q8

Create:

let name = "Shiva"
let age = 28

Print:

My name is Shiva and I am 28 years old.
*/

/*
let nameQ8 = "Shiva"
let ageQ8 = 28
print("My name is \(nameQ8) and I am \(ageQ8) years old.")
*/

/*Q9

If:

let steps = 8000

Print:

Goal completed

if steps are at least 10,000.

Otherwise:

You need more steps
*/

/*
print("How many steps have you taken?")
let stepsQ9 = Int(readLine()!) ?? 0
if stepsQ9 >= 10000 {
    print("Goal completed")
} else {
    print("You need more steps")
}
*/

// Q10  A person can enter a gym if they're 18 or older. 
/*
print("Enter your age:")
let userAge = Int(readLine()!) ?? 0
if userAge >= 18 {
    print("You can enter the gym.")
} else {
    print("You cannot enter the gym.")
}
*/

/*Check someone's weight:

weight < 50 → "Light"
weight between 50 and 80 → "Normal"
weight > 80 → "Heavy"

Try writing the conditions yourself.
*/

/*
print("Enter your weight:")
let userWeight = Double(readLine()!) ?? 0
if userWeight < 50 {
    print("Light Weight")
} else if userWeight >= 50 && userWeight <= 80 {
    print("Normal Weight")
} else {
    print("Heavy Weight")
}
*/

/*5. switch
if is great when you have conditions.
switch is great when you have different choices.
*/

/*Q12

Create:

let workout = 2

Build:

1 → Pushups
2 → Squats
3 → Running
4 → Walking
5 → Cycling
*/

/*
print("Enter your workout choice (1-5):")
let workout = Int(readLine()!) ?? 0
switch workout {
case 1:
    print("Pushups")
case 2:
    print("Squats")
case 3:
    print("Running")
case 4:
    print("Walking")
case 5:
    print("Cycling")
default:
    print("Invalid choice") 
}
*/

/*Q13
Create:
let weather = "rainy"
Use switch:
sunny → Go walking
rainy → Stay indoors
cloudy → Maybe go walking
*/

/*
print("Enter the weather (sunny, rainy, cloudy):")
let weather = readLine() ?? ""
switch weather {
case "sunny":
    print("Go walking")
case "rainy":
    print("Stay indoors")
case "cloudy":
    print("Maybe go walking")
default:
    print("Unknown weather condition")      
}
*/

// 6. for Loop
//print numbers from 1 to 10
/*
for number in 1...10 {
    print(number)
}
*/

/*Q15
Print:
10
20
30
40
50
using a loop.
*/

/*
for number in stride(from:10, through:50, by:10) {
    print(number)
}
*/

/*
Q16

Print:

Pushup 1
Pushup 2
Pushup 3
...
Pushup 10

using a loop.
*/

/*
for pushupNumber in 1...10 {
    print("Pushup \(pushupNumber)")
}
*/

/*Q17
You have:
let steps = [1000, 2000, 3000, 4000, 5000]
Print every step value.
*/
/*
let steps = [1000, 2000, 3000, 4000, 5000]
for step in steps {
    print(step)
}
*/

/*7. while
Think:
"Keep doing this while something is true."

Q18
Start with:
var steps = 0
Increase steps by 500 until you reach 5000.
*/

/*
var steps = 0
while steps < 5000 {
    steps += 500
    print("Current steps: \(steps)")
}
*/

//Q19 Add 5 pushups each time until you reach 50.
/*
var pushups = 0
while pushups < 50 {
    pushups += 5
    print("Current pushups: \(pushups)")
}
*/

// Functions
// A function is a block of code that performs a specific task. You can define a function and then call it whenever you need to perform that task. Functions can take inputs (parameters) and can return outputs (return values). They help organize code, make it reusable, and improve readability.
// Calculator for Addition, Subtraction, Multiplication, and Division

/*
func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

func subtract(num1: Int, num2: Int) -> Int {
    return num1 - num2
}

func multiply(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

func divide(num1: Int, num2: Int) -> Int {
    guard num2 != 0 else {
        print("Error: Division by zero is not allowed.")
        return 0 // Return 0 or handle the error as needed
    }
    return num1 / num2
}

let sum = add(num1: 12, num2: 13)
print("Sum: \(sum)")
let difference = subtract(num1: 12, num2: 13)
print("Difference: \(difference)")
let product = multiply(num1: 12, num2: 13)
print("Product: \(product)")
let quotient = divide(num1: 12, num2: 13)
print("Quotient: \(quotient)")
*/




