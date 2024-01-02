import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {

//     x * y = brown + yellow 
//     2x + (y - 2) * 2 = brown
//     x - 2 * y - 2 = yellow 
    
//     x = (brown + yellow) / y
//     x = yellow / (y - 2) + 2
    
//     (brown + yellow) / y = yellow / (y - 2) + 2
    let total = brown + yellow
    // var y = 0
    
    for y in 3...(total / 2){
        if(total % y == 0){
            let x = total / y
            if((x - 2) * (y - 2) == yellow){
                return [x, y]
            }
        }
//         if(total % i == 0 && total / i == yellow / (i - 2) + 2){
//             y = i
//             break
//         }
    }
    
    return []
}