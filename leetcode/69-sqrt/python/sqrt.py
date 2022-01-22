class Solution(object):
    def mySqrt(self, n):
        """
        :type x: int
        :rtype: int
        """
        x = n
        y = (x + 1) // 2
        while y < x:
            x = y
            y = (x + n // x) // 2
        return x
