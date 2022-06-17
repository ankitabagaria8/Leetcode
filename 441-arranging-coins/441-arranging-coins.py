class Solution:
    def arrangeCoins(self, n: int) -> int:
        count = 0
        for i in range(1,n+1):
            if n-i >= 0:
                count += 1
                n = n-i
            else:
                break
        return count