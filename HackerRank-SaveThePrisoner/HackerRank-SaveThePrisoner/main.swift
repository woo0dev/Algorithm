import Foundation

var n = 7
var m = 19
var s = 2

var res = s - 1
for _ in 1...m {
    res += 1
    if res == n {
        res = 0
    }
}
print(res == 0 ? n : res)
