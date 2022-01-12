//
//  main.swift
//  LeetCode-LongestCommonPrefix
//
//  Created by Woo0 on 2022/01/12.
//

import Foundation

let strs = ["flower","flow","flight"]

var str = strs[0]
var result: [String] = []
var x = ""

for i in 1..<strs.count {
    let temp = strs[i]
    for j in 0..<(str.count > strs[i].count ? strs[i].count : str.count) {
        print(String(str[str.index(str.startIndex, offsetBy: j)]))
        if String(str[str.index(str.startIndex, offsetBy: j)]) == String(temp[temp.index(temp.startIndex, offsetBy: j)]) {
            x += String(str[str.index(str.startIndex, offsetBy: j)])
        } else {
            result.append(x)
            x = ""
        }
    }
}

print(result)
