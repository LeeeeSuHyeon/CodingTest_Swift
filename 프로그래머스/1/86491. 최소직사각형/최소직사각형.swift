import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    

    return (sizes.map{$0.sorted(by: >)}.map{$0[0]}).sorted(by: >)[0] * (sizes.map{$0.sorted(by: >)}.map{$0[1]}).sorted(by: >)[0]
}