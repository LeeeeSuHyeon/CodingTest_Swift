import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    var answer = ""
    var currentL = 10
    var currentR = 12
    
    func convert(number: Int) -> String {
        switch number {
            case 1, 4, 7: 
                currentL = number
                return "L"
            case 3, 6, 9: 
                currentR = number
                return "R"
            default:
                let number = number == 0 ? 11 : number
                var distanceL = 0
                var distanceR = 0

                if currentL % 3 == 1 && currentL < number {
                    distanceL = (number - currentL - 1) / 3 + 1
                } else if currentL % 3 == 1 && currentL > number {
                    distanceL = (currentL - number + 1) / 3 + 1
                } else {
                    distanceL = abs(currentL - number) / 3
                }

                if currentR % 3 == 0 && currentR < number {
                    distanceR = (number - currentR + 1) / 3 + 1
                } else if currentR % 3 == 0 && currentR > number {
                    distanceR = (currentR - number - 1) / 3 + 1
                } else {
                     distanceR = abs(currentR - number) / 3
                }
                
                print(number, currentL, currentR)
                print(distanceL, distanceR)
                print()

                if distanceL < distanceR {
                    currentL = number
                    return "L"
                } else if distanceL > distanceR {
                    currentR = number
                    return "R"
                } else {
                    if hand == "left" {
                        currentL = number
                    } else {
                        currentR = number
                    }
                    return hand.prefix(1).uppercased()
                }
        }
    }
    
    for number in numbers {
        answer += convert(number: number)
    }
    
    return answer
}





/*
1, 4, 7 -> L
3, 6, 9 -> R

2, 5, 8, 0(11) -> 가까운 손 (같으면 hand)

currentL < number {
    currentL + (3 * x) + 1 == number
    -> x + 1 == distance
    -> x = distance - 1

    -> current + (3 * (distance - 1)) + 1 = number
    -> (3 * (distance - 1)) = number - current - 1
    -> distance - 1 = (number - current - 1) / 3
    -> distance = (number - current - 1) / 3 + 1
}

currentL < number {
    currentL - (3 * x) + 1 == number
    -> current - (3 * (distance - 1)) + 1 = number
    -> 3 * (distance - 1) = current + 1 - number
    -> distance - 1 = (current - number + 1) / 3
    -> distance = (current - number + 1) / 3 + 1
}

currentR < number {
    currnetR + (3 * (distance - 1)) - 1 = number
    (3 * (distance - 1)) = number - currnetR + 1
}


*/