class Solution(object):
    def rotate(self, matrix):
        """
        :type matrix: List[List[int]]
        :rtype: None Do not return anything, modify matrix in-place instead.
        """
        # transpose
        for i in range(len(matrix)):
            for j in range(i+1, len(matrix[i])):
                matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
        
        # reverse
        for i in range(len(matrix)):
            start = 0
            end = len(matrix[i]) - 1
            while start < end:
                matrix[i][start], matrix[i][end] = matrix[i][end], matrix[i][start]
                start += 1
                end -= 1
