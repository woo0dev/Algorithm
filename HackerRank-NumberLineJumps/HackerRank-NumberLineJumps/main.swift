import Foundation

var x1 = 0
var v1 = 2
var x2 = 5
var v2 = 4

print(v1 <= v2 ? "NO" : ((x2-x1)%(v2-v1) == 0) ? "YES" : "NO")
