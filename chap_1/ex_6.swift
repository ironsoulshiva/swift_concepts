/*
Create:
hasCompletedGoal()

Example:
7500 → false
10000 → true
12000 → true

Return a Bool.
*/

print("Enter the current steps walked: ")
let currentSteps = Int(readLine()!) ?? 0
print("Enter the goal steps: ")
let goalSteps = Int(readLine()!) ?? 0

func hasCompletedGoal(current: Int, goal: Int) -> Bool {
    guard current >= 0 && goal > 0 else { // Ensures that current steps are non-negative and goal is positive
        return false
    }
    return current >= goal
}

print("Has completed goal: \(hasCompletedGoal(current: currentSteps, goal: goalSteps))")
