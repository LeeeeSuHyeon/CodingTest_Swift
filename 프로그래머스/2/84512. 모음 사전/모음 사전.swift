import Foundation

func solution(_ word:String) -> Int {
    var answer = 0
    var count = 0
    
    func recur(_ current: String) {
        if word == current { answer = count; return }
        if current.count > 5 { return }
        count += 1
        
        recur(current + "A")
        recur(current + "E")
        recur(current + "I")
        recur(current + "O")
        recur(current + "U")
    }
    
    recur("")
    
    return answer
}



/*
A
AA
AAA
AAAA
AAAAA
AAAAE
AAAAI
AAAAO
AAAAU
AAAE


25C5 + 20C4 15C3 + 10C2 + 5C1


*/