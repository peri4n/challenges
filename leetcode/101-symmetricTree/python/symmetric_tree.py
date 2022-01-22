class Solution(object):
    def isSymmetric(self, root):
        def same_tree(a,b):
            if not a and not b:
                return True
            if not a or not b:
                return False
            if a.val == b.val and same_tree(a.left,b.right) and same_tree(a.right,b.left):
                return True
            else:
                return False
        return same_tree(root.right,root.left)
