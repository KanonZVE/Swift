import UIKit

func withoutValueReturn(){
    
}

func withValueReturn(height:Double, name:String) -> String{
    withoutValueReturn()
    return("my name is \(name) this is my height \(height)")
}


print(withValueReturn(height: 90.5, name: "Joan"))
