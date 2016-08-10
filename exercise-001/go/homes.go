package main

import "fmt"
import "math"

func main() {

	// Step 1: initialize home values array
	// This is actually a slice since Go arrays are a fixed size,
	// slices are often more flexible
	home_values := []int{
		725384,
		610099,
		499110,
		1248357,
		635702,
		923237,
		347682,
		529385,
	}
	fmt.Printf("There are currently %v home values saved\n", len(home_values))

	// Step 2
	// Go slices allow appending
  home_values = append(home_values, 1536543, 724942)
  fmt.Printf("There are currently %v home values saved\n", len(home_values))

  // Step 3
	// We need ints to keep track of min/max
	// and for value totals (to calc mean)
  var total int = 0
  var min int = home_values[0]
  var max int = home_values[0]

	// Step 4, 5
	// Go has a "range clause" which can be used to iterate over
	// arrays, strings, and maps
	// A normal for loop would work here too, of course
  for index, value := range home_values {
    fmt.Printf("Home %v has an assessed value of $%v\n", (index + 1), value)
		if value % 5 == 0 {
      fmt.Printf("WARNING: Home requires re-assessment\n\n")
    } else {
      fmt.Printf("\n")
    }
		// Check for min/max
    if value < min {
      min = value
    }
    if value > max {
      max = value
    }
		// Update total
    total += value
  }
	// Step 6
  fmt.Printf("The min home value is $%v\n", min)
  fmt.Printf("The max home value is $%v\n", max)
	// Step 7
	// convert the total and count to floats before
	// calc'ing the mean
  var mean float64 = float64(total)/float64(len(home_values))
	// Round back to int (optional)
	var mean_round int = round_to_int(mean)
  fmt.Printf("The mean home value is $%v\n", mean_round)
}

// Go doesn't have a round method in the math lib (weird)
// So let's make one
func round_to_int(a float64) int {
    if a < 0 {
        return int(math.Ceil(a - 0.5))
    }
    return int(math.Floor(a + 0.5))
}
