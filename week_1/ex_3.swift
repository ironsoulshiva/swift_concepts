/*
Q28 Can you make calculateCalories() call calculateDistance()?
Think:
steps
 ↓
calculateDistance()
 ↓
distance
 ↓
calculateCalories()
 ↓
calories
This is an important programming concept:
one function using another function.
*/


print("Enter the steps walked: ")
let steps = Int(readLine()!) ?? 0

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
print("Distance walked: \(calculateDistance(steps: steps)) km")
print("Calories burned: \(calculateCalories(distance: calculateDistance(steps: steps))) calories")      
