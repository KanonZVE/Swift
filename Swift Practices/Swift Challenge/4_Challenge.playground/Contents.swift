import UIKit

// declaracion
var greeting = "Hello, playground"

// Concatenación
let nombre = "Juan"
let saludo = "Hola, " + nombre + "!"

//Interpolacion
let edad = 25
let mensaje = "Tienes \(edad) años."

// Acceso a Strings Especificos

let primerCaracter = mensaje[mensaje.startIndex]
let ultimoCaracter = mensaje[mensaje.index(before: mensaje.endIndex)]

// Iteración sobre Caracteres

for caracter in mensaje {
    print(caracter)
}

// Longitud

let Longitud = greeting.count

// Comparacion

let string1 = "Hola"
let string2 = "hola"
let sonIguales = string1 == string2

// Prefijos y Sufijos

let tienePrefijo = greeting.hasPrefix("Hello, ")
let tieneSufijo = greeting.hasSuffix("playground")

// Conversión a Mayúsculas y Minúsculas

let mayusculas = mensaje.uppercased()
let minusculas = mensaje.lowercased()

// Substrings (Iniciar desde el caracter X)

let indice = mensaje.index(mensaje.startIndex, offsetBy: 7)
let substring = mensaje[indice...]




