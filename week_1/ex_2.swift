
//calculateCalories()
/*Let's make a simplified fitness model.
Assume:
Calories = distance × 50
So:
5 km → 250 calories
Your machine:
distance
   ↓
calculateCalories()
   ↓
calories
*/

print("Enter the distance walked in km: ")
let distance = Double(readLine()!) ?? 0

func calculateCalories(distance: Double) -> Double {
    guard distance > 0 else {
        return 0
    }
    let calories = distance * 50
    return calories
}

let caloriesBurned = calculateCalories(distance: distance)
print("Calories burned: \(caloriesBurned) calories")
