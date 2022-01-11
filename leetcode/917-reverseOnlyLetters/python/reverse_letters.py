class Solution(object):
    def reverseOnlyLetters(self, s):
        """
        :type s: str
        :rtype: str
        """
        res = list(s)
        left = 0
        right = len(res) - 1
        
        while left < right:
            if res[left].isalpha() and res[right].isalpha():
                res[left], res[right] = res[right], res[left]
                right -= 1
                left += 1
            elif res[left].isalpha():
                right -= 1
            elif res[right].isalpha():
                left += 1
            else:
                right -= 1
                left += 1
        return ''.join(res)
