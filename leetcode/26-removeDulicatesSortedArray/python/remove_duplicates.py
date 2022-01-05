class Solution(object):
    def removeDuplicates(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        start = 1
        next = 1
        while start < len(nums):
            if nums[start-1] != nums[start]:    
                nums[next] = nums[start]
                next += 1
            start += 1
        return next
