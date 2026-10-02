/*
Level 6: Loop Challenge
You have 7 days:
let weeklySteps = [
    8000,
    10000,
    7500,
    12000,
    9500,
    11000,
    15000
]

Q36
Use a for loop to print each day.
*/
//enumerated() is used to get both the index and value of each element in the array. The index is incremented by 1 to represent the day number (1-7) instead of the default 0-based index (0-6).

print("Weekly Steps:")
let weeklySteps = [
    8000,
    10000,
    7500,
    12000,
    9500,
    11000,
    15000
]
for (index, steps) in weeklySteps.enumerated() { // Using enumerated() to get both index and value      
    print("Day \(index + 1): \(steps) steps")
}
