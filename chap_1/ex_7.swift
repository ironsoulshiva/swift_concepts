/*
Create:
getMotivationMessage()

Rules:
0–2999      → "Start moving!"
3000–5999   → "Good start!"
6000–8999   → "Almost there!"
9000–9999   → "So close!"
10000+      → "Goal completed!"

Use if / else if.
*/


print("Enter the current steps walked: ")
let currentSteps = Int(readLine()!) ?? 0

func getMotivationMessage(steps: Int) -> String {
    if steps < 0 {
        return "Invalid step counts."
    } else if steps <= 2999 {
        return "Start moving!"                  
    }  else if steps <= 5999 {
        return "Good start!"
    } else if steps <= 8999 {
        return "Almost there!"
    } else if steps <= 9999 {
        return "So close!"
    } else {
        return "Goal completed!"
    }
}

print(getMotivationMessage(steps: currentSteps))