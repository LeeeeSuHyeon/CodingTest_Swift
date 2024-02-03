let input = readLine()!.split(separator : " ").map{Int(String($0))!}
var index = input[1]
var arr = [Int](1...input[0])
var answer = [Int]()

while(arr.count > 0){
    if index <= arr.count {
        answer.append(arr.remove(at : index - 1))
        index += input[1] - 1
    } else {
        index -= arr.count
    }
}

print("<" + answer.map{String($0)}.joined(separator: ", ") + ">")
