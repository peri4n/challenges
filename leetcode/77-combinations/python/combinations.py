class Solution(object):
    def combine(self, n, k):
        """
        :type n: int
        :type k: int
        :rtype: List[List[int]]
        """
        def directed_combinations(offset, partial_combination):
            if len(partial_combination) == k:
                result.append(list (partial_combination) )
                return

            num_remaining = k - len(partial_combination)

            i = offset
            while i <= n and num_remaining <= n - i + 1:
                directed_combinations(i + 1, partial_combination + [i])
                i+= 1

        result = []
        directed_combinations(1 , [] )
        return result
