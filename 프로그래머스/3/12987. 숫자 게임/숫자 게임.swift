import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sortedA = a.sorted()
    var sortedB = b.sorted()
    var index = 0
    
   for b in sortedB where b > sortedA[index] {
       index += 1
   }
    return index
}