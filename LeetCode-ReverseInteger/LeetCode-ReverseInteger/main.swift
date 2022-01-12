//
//  main.swift
//  LeetCode-ReverseInteger
//
//  Created by Woo0 on 2022/01/12.
//

import Foundation

var x = 312
var sign = x > 0 ? true : false
var quo = sign ? x : x * -1
var rem = 0
var result = ""
while true {
    rem = quo % 10
    quo = quo / 10
    result += String(rem)
    if quo == 0 {
        break
    }
}
Int(pow(-2.0, 31.0)) <= Int(result)! && Int(pow(2.0, 31)-1) >= Int(result)! ? print(sign ? Int(result)! : Int(result)!*(-1)) : print(0)

func reverse(_ x: Int) -> Int {
    var sign = x > 0 ? true : false
    var quo = sign ? x : x * -1
    var rem = 0
    var result = ""
    while true {
        rem = quo % 10
        quo = quo / 10
        result += String(rem)
        if quo == 0 {
            break
        }
    }
    if Int(pow(-2.0, 31.0)) <= Int(result)! && Int(pow(2.0, 31)-1) >= Int(result)! {
        return sign ? Int(result)! : Int(result)!*(-1)
    } else {
        return 0
    }
}

print(reverse(312))
