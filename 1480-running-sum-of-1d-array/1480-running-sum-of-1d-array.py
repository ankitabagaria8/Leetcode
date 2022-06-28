class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        listed = []
        count = 0
        for i in nums:
            count += i
            listed.append(count)
        return listed