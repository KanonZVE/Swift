

import Foundation
/*
// Struct
struct StudentAverage{
    var name:String
    var surname:String
    var score:Float
    // the year of the scholarship
    var year:Int
    
}

// Class
class ClassStudentAverage{
    var name = "Pedro"
    var surname = "Perez"
    var score = 8.5
    var year = 4
}

// Closure
let studentClosure = {(name:String , surname:String , score:Float , year:Int) -> String in
        return("The student \(name) \(surname) is in the \(year) year and his score is \(score)")
}

studentClosure("Pedro","Perez",8.5,4)

// Array
var studentArray = ["Pedro Perez", "Jaimito Lozada"]

studentArray.insert("Carlos Sequera", at: 2)
studentArray.sort()
print(studentArray)

// Remove the last entry

/*
studentArray.removeLast()
print(studentArray)
*/

// Remove the selected entry

studentArray.remove(at:2)

// Dictionary

var studentDictionary = [01: "Pedro Perez", 02: "4 year", 03 : "score is 8.5"]

// Remove the selected Entry
studentDictionary[01] = nil
print(studentDictionary)

// Modify the Entry
studentDictionary[02] = "6 year"
print(studentDictionary)

// Add Entry
studentDictionary[01] = "Jaimito Lozada"
print(studentDictionary)

// Tuples

var studentTupple = (name: "Pedro", surname : "Perez", year: 4, score: 8.9)

// Modify Value
studentTupple.name = "Carlos"
print(studentTupple)

// Enum

enum StudentEnum{
    case name (String)
    case surname (String, String)
    case score (Float)
    case year (Int)
}

var studentName = StudentEnum.name("Pedro")
var studentSurname = StudentEnum.surname("Perez", "Gonzalez")
var studentScore = StudentEnum.score(8.9)
var studentYear = StudentEnum.year(4)

// Extra
*/
func MyAgenda(){
    var selectOption: Int
    var agenda: Dictionary
    
    while selectOption != 5{
        print("1 - Insert Contact")
        print("2 - Erase Contact")
        print("3 - Search Contact")
        print("4 - Update Contact")
        print("5 - Exit")
        print("Select a Valid Option 1-5")
        selectOption = readLine()!
        
        switch selectOption{
            case (selectOption = 1):
            case (selectOption = 2):
            case (selectOption = 3):
            case (selectOption = 4):
            case (selectOption = 5):
            case _:
                print("Invalid Option, please select a valid option 1 to 5")
        }
        
    }
    
    
    
}

func insertContact(){
    
}

func eraseContact(){
    
}

func searchContact(){
    
}

func updateContact(){
    
}

myAgenda()

