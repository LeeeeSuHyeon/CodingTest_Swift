let N = Int(readLine()!)!
var graph = [[UInt8]](repeating: [], count: 128)

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map{Character(String($0)).asciiValue}
    if let parent = input[0], let left = input[1], let right = input[2] {
        graph[Int(parent)] = [left, right]
    }
}

func recur(node : Int, round : Int) {
    if node == asciiValue(".") {
        return
    }
    switch round {
    case 1 :
        print(UnicodeScalar(node)!, terminator: "")
        recur(node: Int(graph[node][0]), round: 1)
        recur(node: Int(graph[node][1]), round: 1)
    case 2 :
        recur(node: Int(graph[node][0]), round: 2)
        print(UnicodeScalar(node)!, terminator: "")
        recur(node: Int(graph[node][1]), round: 2)
    case 3 :
        recur(node: Int(graph[node][0]), round: 3)
        recur(node: Int(graph[node][1]), round: 3)
        print(UnicodeScalar(node)!, terminator: "")
    default:
        return
    }

}

for i in 1...3 {
    recur(node: asciiValue("A"), round : i)
    print()
}


func asciiValue(_ char : String) -> Int {
    return Int(Character(char).asciiValue ?? 0)
}
