import Foundation

func solution(_ new_id:String) -> String {
    // 1.
    var id = new_id.lowercased()
    
    // 2.
    id = id.replacingOccurrences(of:"[^0-9a-z._-]", with:"", options: .regularExpression)
    
    // 3.
    id = id.replacingOccurrences(of: "\\.{2,}", with: ".", options: .regularExpression)
    
    // 4.
    while id.first == "." { id.removeFirst() } 
    while id.last == "." { id.removeLast() } 
    
    // 5.
    if id.isEmpty { id = "a" }
    
    // 6.
    while id.count > 15 {
        id.removeLast()    
    }
    if id.last == "." { id.removeLast() }
    
    // 7.
    while id.count < 3 {
        id += String(id.last!)
    }
    
    return id
}