class Solution:
    def repeatedNTimes(self, nums: List[int]) -> int:
        #nums = [1,2,3,3]
        n = len(nums)
        x = n/2
        number = {}
        count = 0
        for i in nums:
            number[i] = number.get(i,0) + 1
        y = ''
        for key, value in number.items():
            if value == x:
                y = key

        #res = [key for key, value in number.items()]
        return y
        