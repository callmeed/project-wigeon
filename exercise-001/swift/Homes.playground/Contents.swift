// Mallard Project
// Exercise 1

import Foundation

// Step 1
var homeValues: [Int] = [725384,610099,499110,1248357,635702,
                         923237,347682,529385]

// Step 2
print("There are currently \(homeValues.count) home values saved")


// Step 3
homeValues.append(1536543)
homeValues.append(724942)

// Step 4
print("There are currently \(homeValues.count) home values saved")

// Step 5 
// NOTE: .enumerate() on an array will give you a tuple with an index 
//       but you could also just use a counter with a normal for-in loop
for (index, value) in homeValues.enumerate() {
    let counter = index + 1
    print("Home \(counter). has an assessed value of $\(value)")
    if value % 5 == 0 {
        print("WARNING: Home requires re-assessment")
    }
    print("\n")
}

// Step 6: min and max 
let min = homeValues.minElement()
let max = homeValues.maxElement()
print("The min home value is $\(min!)")
print("The max home value is $\(max!)")

// Step 7: mean
let sum:Double = Double(homeValues.reduce(0, combine: +))
let mean:Int = Int(round(sum / Double(homeValues.count)))
print("The mean home value is $\(mean)")

