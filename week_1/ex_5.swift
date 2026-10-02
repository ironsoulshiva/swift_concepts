/*
Level 4: Real Logic Challenges
Now I'll stop giving you the recipe.
Q33
Create a function:
calculateRemainingSteps()

Input:
currentSteps
goal

Example:
7500
10000
*/


print("Enter the current steps walked: ")
let currentSteps = Int(readLine()!) ?? 0
print("Enter the goal steps: ")
let goalSteps = Int(readLine()!) ?? 0

func calculateRemainingSteps(current: Int, goal: Int) -> Int {
    guard current >= 0 && goal > 0 else { // Ensures that current steps are non-negative and goal is positive
        return 0
    }
    let remainingSteps = goal - current
    return remainingSteps > 0 ? remainingSteps : 0 // Ensures that remaining steps do not go below 0
}

let remainingSteps = calculateRemainingSteps(current: currentSteps, goal: goalSteps)
print("Remaining Steps: \(remainingSteps)")
