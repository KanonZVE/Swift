

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

func myAgenda() {
    var agenda: [String: String] = [:]
    var selectOption: String?

    while true {
        print("""
            Seleccione una opción:
            1. Insert Contact
            2. Delete Contact
            3. Search Contact
            4. Update Contact
            5. Exit
            """)
        
        if let input = readLine() {
            selectOption = input
        } else {
            print("Invalid input, please try again.")
            continue
        }
        
        switch selectOption {
        case "1":
            print("Please insert the name:")
            if let name = readLine() {
                print("Please insert the phone number:")
                if let phoneNumber = readLine(), let _ = Int(phoneNumber), phoneNumber.count <= 11 {
                    agenda[name] = phoneNumber
                    print("Contacto agregado exitosamente")
                } else {
                    print("Invalid number. Please insert an integer number with no more than 11 digits.")
                }
            } else {
                print("Invalid input, please try again.")
            }
        case "2":
            print("Please insert the name of the contact to delete:")
            if let name = readLine() {
                if let _ = agenda.removeValue(forKey: name) {
                    print("Contact \(name) deleted successfully.")
                } else {
                    print("The contact \(name) doesn't exist.")
                }
            } else {
                print("Invalid input, please try again.")
            }
        case "3":
            print("Please insert the name of the contact:")
            if let name = readLine() {
                if let phoneNumber = agenda[name] {
                    print("The \(name)'s number is: \(phoneNumber)")
                } else {
                    print("The contact \(name) doesn't exist.")
                }
            } else {
                print("Invalid input, please try again.")
            }
        case "4":
            print("Please insert the name of the contact to update:")
            if let name = readLine() {
                if let _ = agenda[name] {
                    print("Please insert the new phone number:")
                    if let newPhoneNumber = readLine(), let _ = Int(newPhoneNumber), newPhoneNumber.count <= 11 {
                        agenda[name] = newPhoneNumber
                        print("Contact updated successfully:")
                        print("Name: \(name)")
                        print("New Phone Number: \(newPhoneNumber)")
                    } else {
                        print("Invalid number. Please insert an integer number with no more than 11 digits.")
                    }
                } else {
                    print("The contact \(name) doesn't exist.")
                }
            } else {
                print("Invalid input, please try again.")
            }
        case "5":
            print("Exiting...")
            return
        default:
            print("Invalid option, please select a valid option (1-5).")
        }
    }
}

// Llamar a la función para iniciar la agenda
myAgenda()



/*

func MyAgenda() {

    var selectOption: String?
    var agenda: [String:String] = [:]
             
    while selectOption != "5"{
        print("""
            Seleccione una opción:
            1. Insert Contact
            2. Delete Contact
            3. Search Contact
            4. Update Contact
            5. Exit
            """)
        
        switch selectOption{
            case "1":
                print ("Please insert the name: ")
                if let name = readLine(){
                    print("Please inser the phone number: ")
                    if let phoneNumber = readLine(), let number = Int(phoneNumber), phoneNumber.count <= 11 {
                        agenda[name] = phoneNumber
                        print("Contacto agregado exitosamente")
                    }
                
                }
            case "2":
                // Eliminar contacto
                print("Please insert the name of the contact to delete:")
                if let name = readLine() {
                    if let _ = agenda.removeValue(forKey: name) {
                        print("Contact \(name) deleted successfully.")
                    } else {
                        print("The contact \(name) doesn't exist.")
                    }
                } else {
                    print("Invalid input, please try again.")
                }
            case "3":
                // Solicitar al usuario que ingrese el nombre del contacto a buscar
                print("Please insert the name of the contact")
                if let name = readLine() {
                    // Verificar si el nombre está presente en el diccionario
                    if let phoneNumber = agenda[name] {
                        // Si se encuentra, mostrar el número de teléfono correspondiente
                        print("the \(name)`s number is: \(phoneNumber)")
                    } else {
                        // Si no se encuentra, mostrar un mensaje indicando que el contacto no existe
                        print("The contact \(name) doesn`t exist")
                    }
                    } else {
                        // Manejar una entrada inválida del usuario
                        print("Invalid Input, please try again.")
                    }
                
            case "4":
                print("Please insert the name of the contact to update:")
                    if let name = readLine() {
                        if let _ = agenda[name] {
                            print("Please insert the new phone number:")
                            if let newPhoneNumber = readLine(), let _ = Int(newPhoneNumber), newPhoneNumber.count <= 11 {
                                agenda[name] = newPhoneNumber
                                print("Contact updated successfully:")
                                print("Name: \(name)")
                                print("New Phone Number: \(newPhoneNumber)")
                            } else {
                                print("Invalid number. Please insert an integer number with no more than 11 digits.")
                            }
                        } else {
                            print("The contact \(name) doesn't exist.")
                        }
                    } else {
                        print("Invalid input, please try again.")
                    }
            case "5":
                print("Exiting")
                break
                
            case _:
                print("Invalid Option, select a Valid Option 1-5")
        }
        
    }
    
}

MyAgenda()
2

 */

