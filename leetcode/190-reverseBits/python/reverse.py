iclass Solution:
    # @param n, an integer
    # @return an integer
    def reverseBits(self, n):
        res = 0

        for i in range(32):
            last_bit = n & 1
            res = res << 1 | last_bit
            n >>= 1

        return res
