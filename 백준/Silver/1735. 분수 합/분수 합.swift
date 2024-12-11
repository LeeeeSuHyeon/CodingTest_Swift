func gcd(_ a : Int, _ b : Int) -> Int {
    return a % b == 0 ? b : gcd(b, a % b)
}

func lcm(_ a : Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

let AB = readLine()!.split(separator: " ").map{Int($0)!}
let (A, B) = (AB[0], AB[1])

let CD = readLine()!.split(separator: " ").map{Int($0)!}
let (C, D) = (CD[0], CD[1])

let a = A * D + B * C
let b = B * D
let n = gcd(a, b)

print("\(a / n) \(b / n)")
