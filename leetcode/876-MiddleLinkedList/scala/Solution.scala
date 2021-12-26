object Solution {
    def middleNode(head: ListNode): ListNode = {
        var fast = head
        var slow = head
        
        while (fast != null && fast.next != null) {
            slow = slow.next;
            fast = fast.next.next;
        }
        
        return slow;
    }
}
