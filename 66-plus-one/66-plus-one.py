class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        x = ''
        for i in digits:
            x+= str(i)
        y = int(x)
        z = str(y+1)
        res = []
        for j in z:
            res.append(int(j))
        return res