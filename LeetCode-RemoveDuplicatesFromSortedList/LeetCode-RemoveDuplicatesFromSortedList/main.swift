//
//  main.swift
//  LeetCode-RemoveDuplicatesFromSortedList
//
//  Created by Woo0 on 2022/01/12.
//

import Foundation

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

var head = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    var tempArr: [Int] = []
    var node = head
    let result = node
    if node == nil {
        return node
    }
    tempArr.append(node!.val)
    while node?.next != nil {
        if tempArr.contains(node!.next!.val) {
            node?.next = node?.next?.next
        } else {
            tempArr.append(node!.next!.val)
            node = node?.next
        }
    }
    return result
}

print(deleteDuplicates(head))
