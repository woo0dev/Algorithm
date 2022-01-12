//
//  main.swift
//  LeetCode-PalindromeNumber
//
//  Created by Woo0 on 2022/01/12.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    var arr = String(x).map { $0 }
    var i = 0
    var j = arr.count-1
    var result = true
//    for i in 0..<arr.count/2-1 {
//        if arr[i] == arr[j] {
//            result = true
//            j -= 1
//        } else {
//            result = false
//            break
//        }
//    }
    repeat {
        if arr[i] == arr[j] {
            result = true
            i += 1
            j -= 1
        } else {
            result = false
            break
        }
    } while i <= arr.count/2-1
    return result
}

print(isPalindrome(1000030001))
