let input = readLine()!.split(separator: " ").map{Int($0)!}
let (L, C) = (input[0], input[1])
let str = readLine()!.split(separator: " ").map{String($0)}.sorted()
let vowel = ["a", "e", "i", "o", "u"]

func recur(_ index : Int, _ arr : [String]) {
    if index == C {
        let count = arr.filter({ vowel.contains($0) }).count
        if arr.count == L && count >= 1 && arr.count - count >= 2{
            print(arr.joined())
        }
        return
    }
    recur(index + 1, arr + [str[index]])
    recur(index + 1, arr)
}
recur(0, [])
