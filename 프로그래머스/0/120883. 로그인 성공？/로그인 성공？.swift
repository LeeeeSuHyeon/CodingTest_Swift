import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var answer = "fail"
    for str in db {
        if id_pw == str {
            answer = "login" 
            break
        }
        else if(id_pw[0] == str[0] && id_pw[1] != str[1]){
            answer = "wrong pw"
            break
        }
    }
    return answer
}