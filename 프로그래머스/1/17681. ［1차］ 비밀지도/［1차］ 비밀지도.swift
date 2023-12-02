func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var output: [[String]] = []
    var arr1 = arr1.map{Array(String($0, radix : 2))}
    var arr2 = arr2.map{Array(String($0, radix : 2))}
    for (i, v) in arr1.enumerated(){
        var c = v.count
        while(c != n){
            arr1[i].insert("0", at: 0)
            c += 1;
        }
    }
    for (i, v) in arr2.enumerated(){
        var c = v.count
        while(c != n){
            arr2[i].insert("0", at: 0)
            c += 1;
        }
    }

    for i in 0..<n{
        var str1 = arr1[i].map{String($0)}
        var str2 = arr2[i].map{String($0)}
        
        for (index,value) in str2.enumerated(){
            if(value == "1"){
                str1[index] = "1"
            }
        }
        output.append(str1)
    }
    for i in output{
        var str = ""
        for j in i{
            str += (j == "1") ? "#" : " "
        }
        answer.append(str)
    }
    
    return answer
}