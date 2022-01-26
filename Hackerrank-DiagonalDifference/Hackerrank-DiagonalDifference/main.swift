var arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
var a = 0
var b = 0
var j = 0
for i in 0..<arr.count {
    a += arr[i][i]
}
for i in (0..<arr.count).reversed() {
    b += arr[i][j]
    j += 1
}
print((a-b).magnitude)
