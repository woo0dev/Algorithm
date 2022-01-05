import Foundation

let countInput = readLine()!
if let count = Int(countInput.components(separatedBy: " ")[0]) {
    var i = 0
    while i < count {
        let line = readLine()!.components(separatedBy: " ")
        let a = Double(line[0])!
        let b = Int(line[1])!
        let data = Int(pow(a, Double(b%4))) % 10
        data == 0 ? print(10) : print(data)
        i += 1
    }
}
