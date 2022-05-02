
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var firstNumNode = l1
        var secondNumNode = l2
        var currentResultNode: ListNode?
        var resultHead: ListNode?
        var addExtraValue = false
        
        while firstNumNode != nil || secondNumNode != nil || addExtraValue {
            var sumValue = (firstNumNode?.val ?? 0) + (secondNumNode?.val ?? 0) + (addExtraValue ? 1 : 0)
            addExtraValue = sumValue >= 10
            if addExtraValue {
                sumValue %= 10
            }
            let newResultNode = ListNode(sumValue)
            if currentResultNode != nil {
                currentResultNode?.next = newResultNode
            } else {
                resultHead = newResultNode
            }
            currentResultNode = newResultNode
            firstNumNode = firstNumNode?.next
            secondNumNode = secondNumNode?.next
        }
        return resultHead
    }
}

func printNode(_ node: ListNode?) {
    guard node != nil else {
        return
    }
    printNode(node?.next)
    print("\(node!.val)")
}

let firstNumNode = ListNode(9)
firstNumNode.next = ListNode(9)

let secondNumNode = ListNode(9)
secondNumNode.next = ListNode(9)

printNode(Solution().addTwoNumbers(firstNumNode, secondNumNode))
