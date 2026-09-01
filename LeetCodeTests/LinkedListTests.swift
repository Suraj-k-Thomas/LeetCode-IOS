//
//  LinkedListTests.swift
//  LeetCodeTests
//
//  Created by Suraj  Thomas on 25/04/25.
//

import Testing
import XCTest
class LinkedListTests : XCTestCase {

//    func test_linkedList() {
//        
//        let list = LinkedList<Int>()
//        list.append(10)
//        list.append(20)
//        list.append(30)
//
//        list.printList() // Output: 10 20 30
//
//        list.remove(20)
//
//        list.printList() // Output: 10 30
//        
//        XCTAssertEqual(list.toArray(), [10,30 ])
//
//    }
    
    func test_linkedList2() {
        
        let list = LLinkedList<Int>()
        list.addFirst(10)
        list.addFirst(20)
        list.addFirst(30)
//
//        list.printList() 
//
        
//        list.remove(20)
       // XCTAssertEqual(list.LtoArray(), [30,20,10])
//        let  lastnode = list.getLastLNode()
//        XCTAssertEqual(lastnode?.value, 10)
        
        list.addLast(40)
        XCTAssertEqual(list.LtoArray() , [30,20,10,40])
    }
    
    
}

//class Node<T> {
//    var value: T
//    var next: Node<T>?
//    
//    init(value: T) {
//        self.value = value
//        self.next = nil
//    }
//}
//
//class LinkedList<T> {
//    private var head: Node<T>?
//
//    // Add value at the end
//    func append(_ value: T) {
//        let newNode = Node(value: value)
//        if let lastNode = getLastNode() {
//            lastNode.next = newNode
//        } else {
//            head = newNode
//        }
//    }
//
//    // Get last node
//    private func getLastNode() -> Node<T>? {
//        var node = head
//        while let next = node?.next {
//            node = next
//        }
//        return node
//    }
//
//    // Display all values
//    func printList() {
//        var node = head
//        while let current = node {
//            print(current.value)
//            node = current.next
//        }
//    }
//    func toArray() -> [T] {
//        var result: [T] = []
//        var current = head
//        while let node = current {
//            result.append(node.value)
//            current = node.next
//        }
//        return result
//    }
//    
//    // Remove first occurrence of a value
//    func remove(_ value: T) where T: Equatable {
//        var current = head
//        var previous: Node<T>?
//
//        while let currentNode = current {
//            if currentNode.value == value {
//                if let prev = previous {
//                    prev.next = currentNode.next
//                } else {
//                    head = currentNode.next
//                }
//                break
//            }
//            previous = current
//            current = current?.next
//        }
//    }
//}


/*linear data structure
 *create node
 *add to linked list first/ last
 *remove item
 *print
 *convert to array for test
 *convert to struct using protocol
 */

class LNode<T>{
    
    var value: T
    var node: LNode<T>?
    
    init(value: T){
        
        self.value = value
        self.node = nil
    }
}


class LLinkedList<T>{
    private var head: LNode<T>?
    
    func addFirst(_ value: T){
        
    let newNode = LNode<T>(value: value)
        newNode.node = head
        head = newNode
        
    }
    
    func addLast(_ value: T){
        
        let newNode = LNode<T>(value: value)
        
        
        if let lastnode = getLastLNode(){
            
            lastnode.node = newNode
        }else{
            
            head = newNode
        }
        
        
        
    }
    
    func getLastLNode() -> LNode<T>?{
        
        var node = head
        while let next = node?.node{
            print("\(next.value)")
            node = next
        }
        return node
    }
    
        // Get last node
//         func getLastNode() -> LNode<T>? {
//            var node = head
//            while let next = node?.node {
//                node = next
//            }
//            return node
//        }
    
    
    func removeLFirst() -> T?{
        return T.self as? T
        
    }
     
    func LtoArray() -> [T]{
        
        var result: [T] = []
        var current = head
        while let node = current {
            result.append(node.value)
            current = node.node
        }
        return result
    }
    
    func printLList(){
        
    }
}
