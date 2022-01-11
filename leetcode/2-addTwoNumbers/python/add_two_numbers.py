class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        resultlist = curr = ListNode(0)
        carry = 0
        while l1 or l2 or carry:
            if l1  is not None:
                carry += l1.val
                l1 = l1.next
            if l2 is not None:
                carry += l2.val
                l2 = l2.next
            curr.next = ListNode(carry%10) 
            curr = curr.next
            carry = carry // 10
            
        return resultlist.next
