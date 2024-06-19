//
//  main.swift
//  ConsoleTest
//
//  Created by Joan Carlos Sanchez Santos on 19/6/24.
//

import Foundation

// Función para verificar si una palabra es un palíndromo
func isPalindrome(word: String) -> Bool {
    let reversedWord = String(word.reversed())
    return word == reversedWord
}

// Función para verificar si dos palabras son anagramas
func areAnagrams(word1: String, word2: String) -> Bool {
    let sortedWord1 = word1.sorted()
    let sortedWord2 = word2.sorted()
    return sortedWord1 == sortedWord2
}

// Función para verificar si una palabra es un isograma
func isIsogram(word: String) -> Bool {
    var letterSet = Set<Character>()
    for letter in word {
        if letterSet.contains(letter) {
            return false
        }
        letterSet.insert(letter)
    }
    return true
}

// Función principal para solicitar palabras y realizar las comprobaciones
func analyzeWords() {
    print("Enter the first word:")
    guard let firstWord = readLine()?.lowercased(), !firstWord.isEmpty else {
        print("Invalid input. Please enter a valid word.")
        return
    }
    
    print("Enter the second word:")
    guard let secondWord = readLine()?.lowercased(), !secondWord.isEmpty else {
        print("Invalid input. Please enter a valid word.")
        return
    }
    
    // Palíndromo
    if isPalindrome(word: firstWord) {
        print("\(firstWord) is a palindrome.")
    } else {
        print("\(firstWord) is not a palindrome.")
    }
    
    if isPalindrome(word: secondWord) {
        print("\(secondWord) is a palindrome.")
    } else {
        print("\(secondWord) is not a palindrome.")
    }
    
    // Anagramas
    if areAnagrams(word1: firstWord, word2: secondWord) {
        print("\(firstWord) and \(secondWord) are anagrams.")
    } else {
        print("\(firstWord) and \(secondWord) are not anagrams.")
    }
    
    // Isogramas
    if isIsogram(word: firstWord) {
        print("\(firstWord) is an isogram.")
    } else {
        print("\(firstWord) is not an isogram.")
    }
    
    if isIsogram(word: secondWord) {
        print("\(secondWord) is an isogram.")
    } else {
        print("\(secondWord) is not an isogram.")
    }
}

// Ejecutar la función principal
analyzeWords()

