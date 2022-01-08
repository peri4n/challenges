class Solution(object):
    def maxProfit(self, prices):
        """
        :type prices: List[int]
        :rtype: int
        """
        max_profit = 0
        minimum = prices[0]
        for i in range(1, len(prices)):
            if prices[i] >= minimum:
                profit = prices[i] - minimum
                
                if profit > max_profit:
                    max_profit = profit
            else:
                minimum = prices[i]
                
        return max(0, max_profit)
