class Solution:
    def mostWordsFound(self, sentences: List[str]) -> int:
        d = []
        res = 0
        temp = []
        for i in sentences:
            temp = list(i.split(' '))
            res = len(temp)
            d.append(res)
        return max(d)