//
//  MergeTwoSortedLists.swift
//  leetcode
//
//  Created by Hessam Mahdiabadi on 11/22/23.
//

import Foundation

struct MergeTwoSortedLists {
    
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var root: ListNode?
        
        var head1 = list1
        var head2 = list2
        
        if let left = head1?.val, let right = head2?.val {
            if left > right {
                root = .init(right)
                head2 = head2?.next

            } else {
                root = .init(left)
                head1 = head1?.next
            }
        }

        var headRoot = root
        
        while head1 != nil && head2 != nil {
            if let left = head1?.val, let right = head2?.val {
                if left > right {
                    headRoot?.next = .init(right)
                    head2 = head2?.next
                    
                } else {
                    headRoot?.next = .init(left)
                    head1 = head1?.next
                }
                headRoot = headRoot?.next
            }
        }
        
        while head1 != nil {
            if root == nil {
                root = .init(head1?.val ?? 0)
                headRoot = root
                
            } else {
                headRoot?.next = .init(head1?.val ?? 0)
                headRoot = headRoot?.next
            }
            
            head1 = head1?.next
        }
        
        while head2 != nil {
            if root == nil {
                root = .init(head2?.val ?? 0)
                headRoot = root
                
            } else {
                headRoot?.next = .init(head2?.val ?? 0)
                headRoot = headRoot?.next
            }

            head2 = head2?.next
        }

        return root
    }
}
