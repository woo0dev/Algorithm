import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var resultArr: [Int] = []
    var people = [[1,2,3,4,5], [2,1,2,3,2,4,2,5], [3,3,1,1,2,2,4,4,5,5]]
    var answer: [Int] = [0,0,0]
    for idx in 0..<people.count {
        while people[idx].count < answers.count {
            if idx == 0 {
                people[idx].append(people[idx][people[idx].count-5])
            } else if idx == 1 {
                people[idx].append(people[idx][people[idx].count-8])
            } else if idx == 2 {
                people[idx].append(people[idx][people[idx].count-10])
            }
        }
    }
    
    for i in 0..<people.count {
        for j in 0..<answers.count {
            if people[i][j] == answers[j] {
                answer[i] += 1
            }
        }
    }
    
    for i in 0..<answer.count {
        if answer[i] == answer.max() {
            resultArr.append(i+1)
        }
    }
    
    return resultArr
}

var answers = [1,3,2,4,2]
print(solution(answers))

