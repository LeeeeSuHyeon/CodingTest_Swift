import Foundation

func solution(_ array:[Int]) -> Int {
    var arr = array.sorted()
    return arr[array.count/2]
}
