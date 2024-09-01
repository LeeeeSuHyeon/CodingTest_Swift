let input = Int(readLine()!)!

func gcd(_ a : Int, _ b : Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func lcm(_ a : Int, _ b : Int) -> Int {
    return a * b / gcd(a, b)
}

for _ in 0..<input {
    let input = readLine()!.split(separator : " ").map{Int($0)!}
    print(lcm(input[0], input[1]))
}