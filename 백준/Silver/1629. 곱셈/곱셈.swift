let ABC = readLine()!.split(separator: " ").map{Int($0)!}
var (A, B, C) = (ABC[0], ABC[1], ABC[2])

func recur(n: Int) -> Int {
    if n == 0 { return 1 }
    
    if n % 2 == 0 {
        let x = recur(n: n / 2)
        return x % C * x % C
    } else {
        let x = recur(n: (n - 1) / 2)
        return x % C * x % C * A % C
    }
}

print(recur(n: B))
