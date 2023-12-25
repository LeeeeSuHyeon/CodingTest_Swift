import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    let a = A.sorted()
    let b = B.sorted(by : >)
    
    for i in 0..<A.count{
        ans += a[i] * b[i]
    }

    return ans
}