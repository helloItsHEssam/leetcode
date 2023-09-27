//
//  AddTwoSumNumber.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 9/27/23.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

struct AddTwoSumNumber {
    
    func getValue(node: ListNode?) -> Int {
        guard let val = node?.val else {
            return 0
        }
        return val
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var leftTempList = l1
        var rightTempList = l2
        var cary = 0
        var root: ListNode?
        var temp: ListNode?
        
        while leftTempList != nil || rightTempList != nil {
            let leftValue = getValue(node: leftTempList)
            let rightValue = getValue(node: rightTempList)
            
            var sum = leftValue + rightValue + cary
            if sum >= 10 {
                sum = sum % 10
                cary = 1
            } else {
                cary = 0
            }
            
            if root == nil {
                root = .init(sum)
                temp = root
                
            } else {
                let node = ListNode(sum)
                temp?.next = node
                temp = node
            }
            
            leftTempList = leftTempList?.next
            rightTempList = rightTempList?.next
        }
        
        if cary != 0 {
            let node = ListNode(cary)
            temp?.next = node
            temp = node
        }
        
        return root
    }
}
