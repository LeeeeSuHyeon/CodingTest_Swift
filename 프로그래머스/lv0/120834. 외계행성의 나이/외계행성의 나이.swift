import Foundation

func solution(_ age:Int) -> String {
    let alpah = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]


    return String(age).map{alpah[Int(String($0))!]}.joined()
}


