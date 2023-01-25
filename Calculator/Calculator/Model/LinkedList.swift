//
//  LinkedList.swift
//  Calculator
//
//  Created by 혜모리 on 2023/01/25.
//

final class LinkedList {
    private(set) var head: Node?
    private(set) var tail: Node?
    var isEmpty: Bool {
        head == nil
    }
    
    func appendLast(_ data: String) {
        guard !isEmpty, let last = tail else {
            head = Node(value: data)
            tail = head
            return
        }
        
        let node = Node(value: data)
        last.next = node
        tail = node
    }
    
    func removeLast() -> Node? {
        guard !isEmpty else {
            return nil
        }
        
        guard head != tail else {
            head = nil
            return head
        }
        
        var currentNode = head
        
        while currentNode?.next?.next != nil {
            currentNode = currentNode?.next
            
        }
        
        let lastNode = currentNode?.next
        
        currentNode?.next = nil
        tail = currentNode
        return lastNode
    }
    
    func removeFirst() -> Node? {
        guard !isEmpty else {
            return nil
        }
        
        let firstNode = head
        head = firstNode?.next
        return firstNode
    }
    
    func removeAll() {
        head = nil
        tail = nil
    }
}
