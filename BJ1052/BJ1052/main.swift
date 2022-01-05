import Foundation

let line = readLine()!.components(separatedBy: " ").map{ $0 }
var n = Int(line[0])!
let k = Int(line[1])!
var count = 0
var purchase = 0
var bottle = n
while true {
    count = 0
    bottle = n
    while bottle != 0 {
        count += bottle % 2
        bottle /= 2
    }
    if count <= k {
        break
    }
    n += 1
    purchase += 1
}
print(purchase)
