//calculateProgress()
/*
Suppose:
Current steps = 7500
Goal = 10000
Progress:
75%
Mathematically:
current / goal × 100
*/

print("Enter the current steps walked: ")
let currentSteps = Int(readLine()!) ?? 0
print("Enter the goal steps: ")
let goalSteps = Int(readLine()!) ?? 0

func calculateProgress(current:Int, goal:Int) -> Double {
    guard current > 0 && goal > 0 else {
        return 0
    }
    let progress = (Double(current) / Double(goal)) * 100
    return progress
}
print("Progress: \(calculateProgress(current: currentSteps, goal: goalSteps))%")


/*
What happens if:
current = 12000
goal = 10000
Should progress be:
120%
or should your app stop at:
100%
You decide the rule and implement it.
This is where programming starts becoming problem-solving rather than syntax.
*/
// I am choosing the rule that progress can go over 100% 