class Solution:
    def diStringMatch(self, s: str) -> List[int]:
        length = len(s)
        # x = []
        # for i in range(length+1):
        #     x.append(i)
        x = list(range(length+1))
        
        final = []
        for i in s:
            if i == 'I':
                minimum = min(x)
                final.append(minimum)
                x.remove(minimum)
            else:
                maximum = max(x)
                final.append(maximum)
                x.remove(maximum) 
        
        final.append(x[0])
        return final