class Solution(object):
    def findMaxConsecutiveOnes(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        maxZ = 0
        cons = 0
        for i in range(len(nums)):
            if nums[i] != 1:
                maxZ = max(maxZ, cons)
                cons = 0
            else: 
                cons += 1
        return max(maxZ, cons)
