class Solution(object):
    def productExceptSelf(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        zero = -1
        prod = 1
        for i in range(len(nums)):
            if nums[i] == 0:
                if zero != -1:
                    # 2 zeros will cause every entry in the result to be zero
                    return [0] * len(nums)
                else:
                    zero  = i
            else:
                prod *= nums[i]
            
        res = [0] * len(nums)
        for i in range(len(res)):
            if i == zero:
                res[i] = prod
            elif zero == -1:
                res[i] = prod / nums[i]
            else:
                0
                
        return res
