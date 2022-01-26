import Foundation
var input = "07:05:45AM"
var b = input.contains("P") ? true : false
input.removeLast()
input.removeLast()
var arr = input.split(separator: ":")
var result: [String] = []
var res = ""
if b && Int(arr[0])! < 12 {
    result.append(String(Int(arr[0])!+12))
} else if !b && Int(arr[0])! == 12 {
    result.append(String(Int(arr[0])!-12)+"0")
} else {
    result.append(String(arr[0]))
}
res += String(result[0]) + ":" + arr[1] + ":" + arr[2]

print(res)
