import Foundation

func Delivery () -> Int {
	var n = Int(readLine()!)!
    var count = 0
	
    if(n % 5 == 0){
        return  n / 5
    }
    while(n > 0){
        n -= 3
        count += 1
        if(n % 5 == 0){return count + n / 5}
    }
	return -1
}

print(Delivery())
		
