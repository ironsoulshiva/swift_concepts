/*
Find the highest number of steps.
Don't use .max().
Make your own logic.
Hint:
currentHighest
      ↓
compare
      ↓
new highest?
*/

// Define an array of weekly step counts
let weeklySteps = [
    8000,
    10000,
    7500,
    12000,
    9500,
    11000,
    15000
]

var highestSteps = weeklySteps[0] // Initialize highestSteps with the first element of the array
for steps in weeklySteps { // Iterate through each step count in the weeklySteps array
    if steps > highestSteps { // Compare the current step count with the highestSteps variable
        highestSteps = steps // Update highestSteps if the current step count is greater
    }
}
print("Highest steps in the week: \(highestSteps) steps")

// difference assigning highestSteps to weeklySteps[0] instead of 0 is to ensure that the initial value is a valid step count from the array. This way, we avoid potential issues if the array contains negative values or if the first element is not representative of the highest step count. By starting with the first element, we guarantee that we are comparing against an actual step count from the data set.