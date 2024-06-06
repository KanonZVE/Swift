//
//  ErrorHandling.swift
//  Swift Practices
//
//  Created by Joan Carlos Sanchez Santos on 5/6/24.
//

import Foundation

// Error Management

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    
    // Launch Errors
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    // Make de operation
    return firstNumber! + secondNumber!
}

// Define the data type

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

// Whats goin on mrs
func doIt(){
    do {
        print(try sum(firstNumber: 100, secondNumber: -50))
    } catch SumError.firstNumberNil {
        print("El primer número es nulo")
    } catch SumError.secondNumberNil {
        print("El segundo número es nulo")
    } catch SumError.numberNegative(let firstNumber, let secondNumber) {
        print("Hay algún número negativo. firstNumber:\(firstNumber), secondNumber:\(secondNumber)")
    }
}
