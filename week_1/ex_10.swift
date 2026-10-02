/*
Calculate the total weekly steps.
Expected concept:
8000
+10000
+7500
...
= total

Don't use a built-in sum function yet.
Build the logic yourself.
*/

let weeklySteps = [
    8000,
    10000,
    7500,
    12000,
    9500,
    11000,
    15000
]

var sum = 0
for steps in weeklySteps { // Iterate through each step count in the weeklySteps array
    sum += steps
}
print("Total weekly steps: \(sum)")

