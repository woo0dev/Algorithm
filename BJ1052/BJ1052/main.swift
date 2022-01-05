import Foundation

func dec2binConvertor(_ decimal: Int) -> [Int] {
    var resultArr: [Int] = []
    var dec = decimal
    while true {
        resultArr.append(dec%2)
        dec = dec / 2
        if dec <= 1 {
            resultArr.append(dec)
            break
        }
    }
    return resultArr
}


let line = readLine()!.components(separatedBy: " ")
let n = Int(line[0])!
let k = Int(line[1])!
var count = 0

for i in dec2binConvertor(n) {
    if i == 1 {
        count += 1
    }
}

print(count)
