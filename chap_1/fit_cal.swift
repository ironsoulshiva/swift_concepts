//Level 2: Combine Everything
//Now you're going to build a tiny fitness calculator.
//This program calculates the distance walked, calories burned, and progress towards a step goal based on user input. It uses functions to perform calculations and displays a summary of the user's fitness activity.

/*Create:
let name = "Shiva"
let steps = 7500
let goal = 10000

Then your program should calculate:
Name: Shiva

Steps: 7500
Distance: 5.25 km
Calories: 262.5
Progress: 75%

Status: Keep walking!

Use:
- let
- Int
- Double
- String
- Bool
- if
- functions
- function return values
*/

print("Enter your name: ")
let name = readLine() ?? "Unknown"
print("Enter the steps walked: ")
let steps = Int(readLine()!) ?? 0
print("Enter the goal steps: ")
let goal = Int(readLine()!) ?? 0

func calculateDistance(steps: Int) -> Double {
    guard steps > 0 else {
        return 0
    }
    let distance = Double(steps) * 0.000762
    return distance
}

func calculateCalories(distance: Double) -> Double {
    guard distance > 0 else {
        return 0
    }
    let calories = distance * 50
    return calories
}

func calculateProgress(current:Int, goal:Int) -> Double {
    guard current > 0 && goal > 0 else {
        return 0
    }
    let progress = Double(current) / Double(goal) * 100
    return progress
}

print("Fitness Summary:")
print("Name: \(name)")
print("Steps: \(steps)")
let distance = calculateDistance(steps: steps)
print("Distance: \(distance) km")
let calories = calculateCalories(distance: distance)
print("Calories: \(calories)")
let progress = calculateProgress(current: steps, goal: goal)
print("Progress: \(progress)%")

print("Status: \(progress >= 100 ? "Goal Achieved!" : "Keep walking!")")
