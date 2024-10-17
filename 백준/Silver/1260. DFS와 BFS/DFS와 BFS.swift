let input = readLine()!.split(separator: " ").map{Int($0)!}
let (N, M, V) = (input[0], input[1], input[2])
var lines = [[Int]](repeating: [], count: N + 1)

for _ in 0..<M {
    let line = readLine()!.split(separator: " ").map{Int($0)!}
    lines[line[0]].append(line[1])
    lines[line[1]].append(line[0])
}
lines = lines.map{$0.sorted()}

var dp = Array(repeating: 0, count: N + 1)
dp[V] = 1
var answer = [String]()

func recur(idx : Int) {
    answer.append("\(idx)")
    for n in lines[idx] {
        if dp[n] == 0 {
            dp[n] = 1
            recur(idx: n)
        }
    }
}

recur(idx: V)
print(answer.joined(separator: " "))

answer = []
dp = Array(repeating: 0, count: N + 1)
dp[V] = 1
var q = [V]

while q.count > 0 {
    let node = q.removeFirst()
    answer.append("\(node)")
    
    for n in lines[node] {
        if dp[n] == 0 {
            q.append(n)
            dp[n] = 1
        }
    }
}

print(answer.joined(separator: " "))