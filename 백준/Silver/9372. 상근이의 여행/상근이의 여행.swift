let T = Int(readLine()!)!
for _ in 0..<T {
    let NM = readLine()!.split(separator: " ").map{Int($0)!}
    for _ in 0..<NM[1] {
        let _ = readLine()
    }
    print(NM[0] - 1)
}
