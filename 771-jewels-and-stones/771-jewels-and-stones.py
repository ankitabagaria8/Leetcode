class Solution:
    def numJewelsInStones(self, jewels: str, stones: str) -> int:
        jewels = list(jewels)
        stones = list(stones)
        count = 0
        for i in jewels:
            for j in stones:
                if i == j:
                    count += 1
        return count