class Solution:
    def kthDistinct(self, arr: List[str], k: int) -> str:
        frequency = {}
        for m in arr:
            frequency[m] = frequency.get(m,0)+1
        
        res = [i for i,j in frequency.items() if j==1]
        
        if len(res) < k:
            x = ''
        else:
            x = res[int(k)-1]
        return x
        