let nm = readLine()!.split(separator: " ").map{Int($0)!}
let (n, m) = (nm[0], nm[1])
var rank = [Int](repeating: 0, count: n + 1)
var parent = [Int](repeating: 0, count: n + 1)
for i in 1...n {
    parent[i] = i
}

for _ in 0..<m {
    let xab = readLine()!.split(separator: " ").map{Int($0)!}
    let (x, a, b) = (xab[0], xab[1], xab[2])
    if x == 0 {
        union(a, b)
    } else{
        print(find(a) == find(b) ? "YES" : "NO")
    }
}

func union(_ a : Int, _ b : Int) {
    let A = find(a)
    let B = find(b)
    if A == B {
        return
    }
    
    if rank[A] < rank[B] {
        parent[A] = B
    } else {
        parent[B] = A
        rank[A] += 1
    }
}

func find(_ a : Int) -> Int {
    if a == parent[a] {
        return a
    } else {
        parent[a] = find(parent[a])
        return find(parent[a])
    }
}
