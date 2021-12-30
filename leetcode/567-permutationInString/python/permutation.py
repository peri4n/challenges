class Solution(object):
    def checkInclusion(self, s1, s2):
        """
        :type s1: str
        :type s2: str
        :rtype: bool
        """
        compositionS1 = self.composition(s1)
        n = len(s1)
        for i in range(len(s2)):
            sub = s2[i:i+n]

            if self.composition(sub) == compositionS1:
                return True

        return False

    def composition(self, s):
        counts = {}
        for c in s:
            if c in counts:
                counts[c] += 1
            else:
                counts[c] = 1
        return counts

