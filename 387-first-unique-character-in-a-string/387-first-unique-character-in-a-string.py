class Solution:
    def firstUniqChar(self, s: str) -> int:
        res = {}
        for i in range(len(s)):
            res[s[i]] = res.get(s[i],0)+1
        final = [key for key,value in res.items() if value == 1]
        out = 0
        #print(len(final))
        if len(final) > 0:
            for j in range(len(s)):
                if s[j] == final[0]:
                    out = j
        else:
            out = -1
        return out