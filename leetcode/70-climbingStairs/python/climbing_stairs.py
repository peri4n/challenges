class Solution(object):
    def climbStairs(self, n):
        """
        :type n: int
        :rtype: int
        """
        mOne = 1
        mTwo = 0
        steps = 1
        for i in range(n):
            steps = mOne + mTwo
            mTwo = mOne
            mOne = steps
            
        return steps 
