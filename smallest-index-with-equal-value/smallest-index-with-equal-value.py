class Solution:
    def smallestEqual(self, nums: List[int]) -> int:
        x = []
        y = []
        for i in range(len(nums)):
            if i%10 == nums[i]:
                x.append(i)
        if len(x) > 0:
            y.append(min(x))
            z = y[0]
        else:
            y.append(-1)
            z = y[0]
        
        return z
    

# nums = [4,3,2,1]
# #nums = [1,2,3,4,5,6,7,8,9,0]
# x = []
# y = []
# for i in range(len(nums)):
#     if i%10 == nums[i]:
#         x.append(i)

# if len(x) > 0:
#     z = min(x)
# else:
#     z = -1
# print(z)
    
    
