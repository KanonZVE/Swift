

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
studentDictionary[04] = "Jaimito Lozada"
print(studentDictionary)

// Tuples

var studentTupple = (name: "Pedro", surname : "Perez", year: 4, score: 8.9)
∫
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


*/


// Extra

// Función para insertar un nuevo contacto en la agenda
func insertContact(agenda: inout [String: String]) {
    // Solicitar al usuario que inserte el nombre del contacto
    print("Please insert the name:")
    // Leer la entrada del usuario para el nombre del contacto
    if let name = readLine() {
        // Solicitar al usuario que inserte el número de teléfono
        print("Please insert the phone number:")
        // Leer la entrada del usuario para el número de teléfono
        if let phoneNumber = readLine(), let _ = Int(phoneNumber), phoneNumber.count <= 11 {
            // Validar que el número de teléfono sea numérico y tenga como máximo 11 dígitos
            // Agregar el nuevo contacto al diccionario agenda
            agenda[name] = phoneNumber
            // Imprimir mensaje de éxito
            print("Contact added successfully")
        } else {
            // Imprimir mensaje de error si el número de teléfono es inválido
            print("Invalid phone number. Please insert a numeric phone number with no more than 11 digits.")
        }
    } else {
        // Imprimir mensaje de error si la entrada del nombre del contacto es inválida
        print("Invalid input, please try again.")
    }
}

// Función para eliminar un contacto de la agenda
func deleteContact(agenda: inout [String: String]) {
    // Solicitar al usuario que inserte el nombre del contacto a eliminar
    print("Please insert the name of the contact to delete:")
    // Leer la entrada del usuario para el nombre del contacto a eliminar
    if let name = readLine() {
        // Verificar si el nombre del contacto existe en la agenda
        if let _ = agenda.removeValue(forKey: name) {
            // Si el contacto existe, eliminarlo de la agenda
            // Imprimir mensaje de éxito
            print("Contact \(name) deleted successfully.")
        } else {
            // Si el contacto no existe, imprimir mensaje de error
            print("The contact \(name) doesn't exist.")
        }
    } else {
        // Imprimir mensaje de error si la entrada del nombre del contacto es inválida
        print("Invalid input, please try again.")
    }
}

// Función para buscar un contacto en la agenda
func searchContact(agenda: [String: String]) {
    // Solicitar al usuario que inserte el nombre del contacto a buscar
    print("Please insert the name of the contact:")
    // Leer la entrada del usuario para el nombre del contacto a buscar
    if let name = readLine() {
        // Verificar si el nombre del contacto existe en la agenda
        if let phoneNumber = agenda[name] {
            // Si el contacto existe, imprimir su número de teléfono
            print("The \(name)'s number is: \(phoneNumber)")
        } else {
            // Si el contacto no existe, imprimir mensaje de error
            print("The contact \(name) doesn't exist.")
        }
    } else {
        // Imprimir mensaje de error si la entrada del nombre del contacto es inválida
        print("Invalid input, please try again.")
    }
}
func updateContact(agenda: inout [String: String]) {
    // Solicitar al usuario que inserte el nombre del contacto a actualizar
    print("Please insert the name of the contact to update:")
    // Leer la entrada del usuario para el nombre del contacto a actualizar
    if let name = readLine() {
        // Verificar si el nombre del contacto existe en la agenda
        if let _ = agenda[name] {
            // Si el contacto existe, solicitar al usuario que inserte el nuevo número de teléfono
            print("Please insert the new phone number:")
            // Leer la entrada del usuario para el nuevo número de teléfono
            if let newPhoneNumber = readLine(), let _ = Int(newPhoneNumber), newPhoneNumber.count <= 11 {
                // Validar que el nuevo número de teléfono sea numérico y tenga como máximo 11 dígitos
                // Actualizar el número de teléfono del contacto en la agenda
                agenda[name] = newPhoneNumber
                // Imprimir mensaje de éxito
                print("Contact updated successfully:")
                print("Name: \(name)")
                print("New Phone Number: \(newPhoneNumber)")
            } else {
                // Imprimir mensaje de error si el nuevo número de teléfono es inválido
                print("Invalid phone number. Please insert a numeric phone number with no more than 11 digits.")
            }
        } else {
            // Si el contacto no existe, imprimir mensaje de error
            print("The contact \(name) doesn't exist.")
        }
    } else {
        // Imprimir mensaje de error si la entrada del nombre del contacto es inválida
        print("Invalid input, please try again.")
    }
}

func myAgenda() {
    var agenda: [String: String] = [:]
    var validOption = true

    while validOption {
        print("""
            Select an Option:
            1. Insert Contact
            2. Delete Contact
            3. Search Contact
            4. Update Contact
            5. Exit
            """)
        
        if let selectOption = readLine() {
            switch selectOption {
            case "1":
                insertContact(agenda: &agenda)
            case "2":
                deleteContact(agenda: &agenda)
            case "3":
                searchContact(agenda: agenda)
            case "4":
                updateContact(agenda: &agenda)
            case "5":
                print("Exiting...")
                validOption = false
            default:
                print("Invalid option, please select a valid option (1-5).")
            }
        } else {
            print("Invalid input, please try again.")
        }
    }
}

// Llamar a la función para iniciar la agenda
myAgenda()

