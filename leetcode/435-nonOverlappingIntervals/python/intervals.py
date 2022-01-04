class Solution:
    def eraseOverlapIntervals(self, intervals: List[List[int]]) -> int:
        """
        :type intervals: List[List[int]]
        :rtype: int
        """
        intervals.sort(key = lambda x: x[1])
        position = -10000000
        count = 0
        for start, end in intervals:
            if start >= position:
                position = end
                count += 1
        return len(intervals) - count
