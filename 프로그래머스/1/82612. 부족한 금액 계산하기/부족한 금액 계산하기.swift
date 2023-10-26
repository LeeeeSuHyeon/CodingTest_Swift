import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    
    return (1...count).map{price * $0}.reduce(0, +) - money >= 0 ? Int64((1...count).map{price * $0}.reduce(0, +) - money) : Int64(0)
}