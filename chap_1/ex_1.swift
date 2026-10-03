/*
Build
calculateDistance()
calculateCalories()
calculateProgress()
*/

//Now Build calculateDistance()
// Handled zero and negative steps walked by returning 0 distance walked using guard statement.
//guard statement is used to exit the function early if the condition is not met. In this case, if the steps walked is less than or equal to 0, the function will return 0 distance walked. 


print("Enter the steps walked: ")
let steps = Int(readLine()!) ?? 0

func calculateDistance(steps: Int) -> Double {

    guard steps > 0 else {
        return 0
    }
    let distance = Double(steps) * 0.000762
    return distance
}

let distanceWalked = calculateDistance(steps: steps)
print("Distance walked: \(distanceWalked) km")






 


