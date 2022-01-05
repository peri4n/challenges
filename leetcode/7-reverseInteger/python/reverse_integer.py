class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        neg = False
        if x < 0:
            neg = True
            x = -x
            
        res = 0
        while x != 0:
            digit = x % 10
            res = (res * 10) + digit
            x //= 10
            
        if res > 2 ** 31 -1 or res < -2 ** 31:
            return 0
        
        if neg:
            return -res
        else:
            return res
