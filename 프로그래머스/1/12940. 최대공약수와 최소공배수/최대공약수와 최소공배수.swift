func solution(_ n:Int, _ m:Int) -> [Int] {
    var cd = (1...min(n, m)).filter{min(n, m) % $0 == 0}
    var gcd = cd.filter{max(n, m) % $0 == 0}.sorted(by: >)[0]
    return [gcd, n * m / gcd]
}