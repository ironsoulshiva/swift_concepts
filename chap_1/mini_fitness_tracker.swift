/*
 Mini Fitness Tracker
 fit_cal.swift
 This program calculates the distance walked, calories burned, and progress towards a step goal based on user input. It uses functions to perform calculations and displays a summary of the user's fitness activity.

steps_cal.swift
 This program calculates the total steps, average steps, highest steps, lowest steps, and the number of days completed towards a step goal based on an array of weekly step counts. It uses functions to perform calculations and displays a summary of the user's weekly fitness activity. 

Combine both programs into a single mini fitness tracker that provides a comprehensive summary of the user's fitness activity for the week.
*/

// I will follow the guidelines provided in the original snippets and combine the functionalities of both programs into a single mini fitness tracker. The final output will include the user's name, total steps, average steps, highest steps, lowest steps, distance walked, calories burned, progress towards the step goal, and the number of days completed towards the goal.
// Don't want to use any methods like .min() or .max() for finding the lowest and highest steps. Instead, I will implement my own logic to find these values.

print("Welcome to the Mini Fitness Tracker!")
print("Please enter your name: ")
let name = readLine() ?? "Unknown"
print("Hello, \(name)! Let's track your fitness activity.")

//print("Enter your weekly step counts for 7 days (separated by commas): ")
//let input = readLine() ?? ""
var weeklySteps = [ 2000, 10000, 7500, 12000, 9500, 11000, 15000 ] // Example data; you can uncomment the above lines to take user input

func calculateTotalSteps(steps: [Int]) -> Int { // Calculate the total number of steps taken in the week
    var total = 0 // Initialize a variable to hold the total steps
    for step in steps { // Iterate through each step count in the weeklySteps array
        total += step // Add the current step count to the total
    }
    return total // Return the total number of steps
}

func calculateAverageSteps(steps: [Int]) -> Double {
    let total = calculateTotalSteps(steps: steps) 
    return Double(total) / Double(steps.count)
}

func calculateHighestSteps(steps: [Int]) -> Int {
    var highestSteps = steps[0] // Initialize highestSteps with the first element of the array
    for step in steps { // Iterate through each step count in the weeklySteps array
        if step > highestSteps { // Compare the current step count with the highestSteps variable
            highestSteps = step // Update highestSteps if the current step count is higher
        }
    }
    return highestSteps
}

func calculateLowestSteps(steps: [Int]) -> Int {
    var lowestSteps = steps[0] // Initialize lowestSteps with the first element of the array
    for step in steps { // Iterate through each step count in the weeklySteps array
        if step < lowestSteps { // Compare the current step count with the lowestSteps variable
            lowestSteps = step // Update lowestSteps if the current step count is lower
        }
    }
    return lowestSteps
}

func calculateDaysCompleted(steps: [Int], goal: Int) -> Int {
    var daysCompleted = 0 // Initialize a counter for the number of days completed towards the goal
    for step in steps { // Iterate through each step count in the weeklySteps array
        if step >= goal { // Check if the current step count meets or exceeds the goal
            daysCompleted += 1 // Increment the counter if the goal is met
        }
    }
    return daysCompleted // Return the total number of days completed towards the goal
}

print("Enter your step goal for the week: ")
let goal = Int(readLine()!) ?? 0

let totalSteps = calculateTotalSteps(steps: weeklySteps)
let averageSteps = calculateAverageSteps(steps: weeklySteps)
let highestSteps = calculateHighestSteps(steps: weeklySteps)
let lowestSteps = calculateLowestSteps(steps: weeklySteps)
let daysCompleted = calculateDaysCompleted(steps: weeklySteps, goal: goal)

print("Fitness Summary for \(name):")
print("Total Steps: \(totalSteps)")
print("Average Steps: \(averageSteps)")
print("Highest Steps: \(highestSteps)")
print("Lowest Steps: \(lowestSteps)")
print("Days Completed towards Goal: \(daysCompleted)")


