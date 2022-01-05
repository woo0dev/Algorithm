import Foundation


var colorArr: [Int] = []

for i in 0..<3 {
    print(">", terminator: " ")
    switch readLine() {
    case "black":
        i != 2 ? colorArr.append(0) : colorArr.append(1)
    case "brown":
        i != 2 ? colorArr.append(1) : colorArr.append(10)
    case "red":
        i != 2 ? colorArr.append(2) : colorArr.append(100)
    case "orange":
        i != 2 ? colorArr.append(3) : colorArr.append(1000)
    case "yellow":
        i != 2 ? colorArr.append(4) : colorArr.append(10000)
    case "green":
        i != 2 ? colorArr.append(5) : colorArr.append(100000)
    case "blue":
        i != 2 ? colorArr.append(6) : colorArr.append(1000000)
    case "violet":
        i != 2 ? colorArr.append(7) : colorArr.append(10000000)
    case "grey":
        i != 2 ? colorArr.append(8) : colorArr.append(100000000)
    default:
        i != 2 ? colorArr.append(9) : colorArr.append(1000000000)
    }
}

print(colorArr[0] * (colorArr[2] * 10) + colorArr[1] * colorArr[2])
