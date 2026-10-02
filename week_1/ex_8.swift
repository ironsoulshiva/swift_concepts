/*
Level 5: Switch Challenge
Create:
getWorkoutName()

Input:
1

Output:
Pushups

Rules:
1 → Pushups
2 → Squats
3 → Running
4 → Walking
5 → Cycling

Use switch.
*/

print("Enter your workout choice (1-5): ")
let workoutChoice = Int(readLine()!) ?? 0

func getWorkoutName(choice: Int) -> String {
    switch choice {
    case 1:
        return "Pushups"
    case 2:
        return "Squats"
    case 3:
        return "Running"
    case 4:
        return "Walking"
    case 5:
        return "Cycling"
    default:
        return "Invalid choice"     
    }
}

print("Workout Name: \(getWorkoutName(choice: workoutChoice))")