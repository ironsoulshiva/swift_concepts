/*
Find the lowest number of steps.
Again, don't use .min().
Make your own logic.
*/  

var weeklySteps = [
    8000,
    10000,
    7500,
    12000,
    9500,
    11000,
    15000
]

var lowestSteps = weeklySteps[0] // Initialize lowestSteps with the first element of the array
for steps in weeklySteps { // Iterate through each step count in the weeklySteps array
    if steps < lowestSteps { // Compare the current step count with the lowestSteps variable
        lowestSteps = steps // Update lowestSteps if the current step count is lower
    }
}
print("Lowest steps in the week: \(lowestSteps) steps")
