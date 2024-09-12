let input = readLine()!.map{Int(String($0))!}.sorted(by: >)
let sum = input.reduce(0, +)
if sum % 3 != 0 || !input.contains(0){
    print(-1)
} else {
    print(input.map{String($0)}.joined())
}
