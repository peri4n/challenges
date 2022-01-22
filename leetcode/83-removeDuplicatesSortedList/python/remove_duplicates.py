class Solution(object):
    def deleteDuplicates(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        if not head:
            return None
        if not head.next:
            return head
        else:
            if head.val == head.next.val:
                return self.deleteDuplicates(head.next)
            else:
                return ListNode(head.val, self.deleteDuplicates(head.next))
