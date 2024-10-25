let T = Int(readLine()!)!

for _ in 0..<T {
    Promblem9372()
}

func Promblem9372 () {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    let (N, M) = (NM[0], NM[1])
    var tree = [[Int]](repeating: [], count: N + 1)
    for _ in 0..<M {
        let ab = readLine()!.split(separator: " ").map{Int($0)!}
        let (a, b) = (ab[0], ab[1])
        tree[a].append(b)
        tree[b].append(a)
    }
    var index = 0
    var q = [1]
    var country = [1]
    var flag = true
    
    while index < q.count && flag{
        let current = q[index]
        index += 1
        
        for next in tree[current] {
            if current != next && !country.contains(next) {
                q.append(next)
                country.append(next)
                if country.count == N {
                    print(q.count - 1)
                    flag = false
                    break
                }
                
            }
        }
    }
}