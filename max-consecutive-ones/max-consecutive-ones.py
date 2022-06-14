class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        count = 0
        res = []
        for i in nums:
            if i != 0:
                count += 1
            else:
                count = 0
            res.append(count)

        return max(res)