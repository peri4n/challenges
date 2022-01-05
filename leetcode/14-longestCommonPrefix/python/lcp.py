class Solution(object):
    def longestCommonPrefix(self, strs):
        """
        :type strs: List[str]
        :rtype: str
        """
        if not strs:
            return ""
        
        if len(strs) == 1:
            return strs[0]
        
        prefix = self.commonPrefix(strs[0], strs[1])
        for i in range(2, len(strs)):
            prefix = self.commonPrefix(prefix, strs[i])
            
        return prefix
        
    def commonPrefix(self, str1, str2):
        lStr1 = len(str1)
        lStr2 = len(str2)
        for i in range(min(lStr1, lStr2)):
            if str1[i] != str2[i]:
                return str1[:i]
        if lStr1 < lStr2:
            return str1
        else:
            return str2
