let input = readLine()!.split(separator: " ").map{Int64($0)!}

func gcd(_ a : Int64, _ b : Int64) -> Int64 {
    return (a % b == 0 ? b : gcd(b, a % b))
}

func lcm(_ a : Int64, _ b : Int64) -> Int64 {
    return a * b / gcd(a, b)
}

print(lcm(input[0], input[1]))
