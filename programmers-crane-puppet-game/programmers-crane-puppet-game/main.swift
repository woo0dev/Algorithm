import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var result = 0
    var resultArr: [Int] = []
    var arr = board
    
    for m in moves {
        for i in 0..<arr.count {
            if arr[i][m-1] != 0 {
                resultArr.append(arr[i][m-1])
                arr[i][m-1] = 0
                break
            }
        }
        if resultArr.count >= 2 && resultArr[resultArr.count-1] == resultArr[resultArr.count-2] {
            resultArr.removeLast()
            resultArr.removeLast()
            result += 2
        }
    }
    return result
}
let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]

print(solution(board, moves))
