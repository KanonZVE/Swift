import UIKit

//The famous FizzBuzz

for counter in 1...100 {
    if counter % 3 == 0 && counter % 5 == 0 {
        print("fizzbuzz")
    } else if counter % 3 == 0 {
        print("fizz")
    } else if counter % 5 == 0 {
        print("buzz")
    } else {
        print(counter)
    }
}
