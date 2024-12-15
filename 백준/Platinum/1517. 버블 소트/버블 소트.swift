let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map{Int($0)!}
var arr = Array(repeating: [Int](), count: N % 2 == 0 ? N / 2 : N / 2 + 1)

var count = 0
for i in stride(from: 0, to: N, by: 2) {
    if i == N - 1 {
        arr[i / 2] = [nums[i]]
        break
    }
    if nums[i] > nums[i + 1] {
        count += 1
        arr[i / 2] = [nums[i + 1], nums[i]]
    } else {
        arr[i / 2] = [nums[i], nums[i + 1]]
    }
}
while arr.count != 1 {
    let copyArr = arr
    for i in stride(from: 0, to: copyArr.count, by: 2) {
        if i == copyArr.count - 1 {
            arr[i / 2] = copyArr[i]
            break
        }
        let arr1 = copyArr[i]
        let arr2 = copyArr[i + 1]
        var index1 = 0
        var index2 = 0
        var newArr = [Int]()
        
        while index1 != arr1.count && index2 != arr2.count {
            if arr1[index1] <= arr2[index2] {
                newArr.append(arr1[index1])
                index1 += 1
            } else {
                newArr.append(arr2[index2])
                index2 += 1
                count += arr1.count - index1
            }
        }
        newArr += index1 == arr1.count ? arr2[index2...] : arr1[index1...]
        arr[i / 2] = newArr
        arr.removeLast()

    }
}
print(count)