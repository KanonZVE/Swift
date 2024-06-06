import UIKit

//variable global
var varStringGlobal = "Hola Brais"


//funcion sin retorno
func WithoutValueReturn(){
    //variable local
    var varStringLocal :String
    varStringLocal = "Hola otra vez"
    print(varStringLocal)
}


//funcion con retorno
func WithValueReturn(height:Double, name:String) -> String{
    return("my name is \(name) this is my height \(height)")
}

//extra

func MultiploUnoACien(firstParameter: String, secondParameter: String) -> String {
    var result = ""
    for counter in 1...100{
        if counter % 3 == 0{
            result += "\(firstParameter)\n"
        }else if counter % 5 == 0{
            result += "\(secondParameter)\n"
        } else if counter % 3 == 0 && counter % 5 == 0{
            result += "\(firstParameter) \(secondParameter)\n"
        }else{
            result += "\(counter)"
        }
    }
    return result
}


print(WithValueReturn(height: 96.5, name: "Joan"))
print(varStringGlobal)

//No retorna nada
print(MultiploUnoACien(firstParameter: "Test1", secondParameter: "Test2"))
