import Foundation

func solution(_ letter:String) -> String {
    
    var answer = ""
    
    let morse :[String : String] = [
        ".-" : "a", "-...":"b", "-.-.":"c", "-..":"d", ".":"e", "..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
    ]
    letter.split(separator: " ").map{
        for (key, value) in morse{
            if key == $0 {
                answer += value
            }
        }
    }

    
    return answer
}