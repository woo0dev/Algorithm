import Foundation

let countInput = readLine()!
if let count = Int(countInput.components(separatedBy: " ")[0]) {
    var arr: [[Int]] = [[0,0], [0,0], [0,0], [0,0], [0,0] ]
    for i in 0..<count {
        let line = readLine()!.components(separatedBy: " ")
        arr[i][0] = Int(line[0])!
        arr[i][1] = Int(line[1])!
    }
    for i in 0..<count {
        let data = Int(pow(Double(arr[i][0]), Double(arr[i][1]%4))) % 10
        data == 0 ? print(10) : print(data)
    }
}
