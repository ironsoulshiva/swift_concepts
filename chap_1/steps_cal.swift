/*
 This program calculates the total steps, average steps, highest steps, lowest steps, and the number of days completed towards a step goal based on an array of weekly step counts. It uses functions to perform calculations and displays a summary of the user's weekly fitness activity. 

Now combine everything.
Given:
let weeklySteps = [
    8000,
    10000,
    7500,
    12000,
    9500,
    11000,
    15000
]

Build functions:
calculateTotalSteps()
calculateAverageSteps()
calculateHighestSteps()
calculateLowestSteps()
calculateDaysCompleted()
calculateWeeklyProgress()

Your final output should conceptually look like:
🏃 WEEKLY REPORT

Total Steps: XXXXX
Average: XXXXX
Highest: XXXXX
Lowest: XXXXX

Goals Completed: X / 7

Weekly Progress: XX%

🔥 Keep moving!
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

func calculateTotalSteps(steps: [Int]) -> Int {
    var total = 0
    for step in steps {
        total += step
    }
    return total
}

func calculateAverageSteps(steps: [Int]) -> Double {
    let total = calculateTotalSteps(steps: steps)
    return Double(total) / Double(steps.count)
}

func calculateHighestSteps(steps: [Int]) -> Int {
    var highest = steps[0]
    for step in steps {
        if step > highest {
            highest = step
        }
    }
    return highest
}

func calculatedLowestSteps(steps: [Int]) -> Int {
    var lowest = steps[0]
    for steps in steps {
        if steps < lowest {
            lowest = steps
        }           
    }
    return lowest
}

func calculateDaysCompleted(steps: [Int], goal: Int) -> Int {
    var completedDays = 0
    for step in steps {                // Iterate through each step count in the weeklySteps array
        if step >= goal {
            completedDays += 1
        }
    }
    return completedDays
}

func calculatedWeeklyProgress(steps: [Int], goal: Int) -> Double {
    let totalSteps = calculateTotalSteps(steps: steps)
    let totalGoal = goal * steps.count           // Calculate the total goal for the week
    return Double(totalSteps) / Double(totalGoal) * 100
}

print("🏃 WEEKLY REPORT")       
print("Total Steps: \(calculateTotalSteps(steps: weeklySteps))")
print("Average: \(calculateAverageSteps(steps: weeklySteps))")
print("Highest: \(calculateHighestSteps(steps: weeklySteps))")
print("Lowest: \(calculatedLowestSteps(steps: weeklySteps))")
let goal = 10000
print("Goals Completed: \(calculateDaysCompleted(steps: weeklySteps, goal: goal)) / \(weeklySteps.count)")
print("Weekly Progress: \(calculatedWeeklyProgress(steps: weeklySteps, goal: goal))%")
print("🔥 Keep moving!")