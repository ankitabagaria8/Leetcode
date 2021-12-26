class Solution:
    def sumOfUnique(self, nums: List[int]) -> int:
        unique = {}
        for i in nums:
            unique[i] = unique.get(i,0) + 1
        res = [key for key, value in unique.items() if value == 1]
        y = sum(res)
        return y