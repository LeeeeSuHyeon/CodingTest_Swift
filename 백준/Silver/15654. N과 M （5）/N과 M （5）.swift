let input = readLine()!.split(separator : " ").map{Int($0)!}
let nums = readLine()!.split(separator : " ").map{Int($0)!}.sorted()

func recur(depth : Int, arr : [String]) {
    if depth == input[1] {
        print(arr.joined(separator : " "))
        return
    }
    
    for i in 0..<input[0] {
        if arr.contains(String(nums[i])) {
            continue
        }
        recur(depth : depth + 1, arr : arr + ["\(nums[i])"])
    }
}
recur(depth : 0, arr : [])
