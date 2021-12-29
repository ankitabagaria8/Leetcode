class Solution:
    def replaceElements(self, arr: List[int]) -> List[int]:
        #arr = [17,18,5,4,6,1]
        res = []
        for i in range(len(arr)-1):
            # x = arr[i]
            # temp = []
            temp = arr[i+1:]
            # for j in range(i+1, len(arr)):
            #     temp.append(arr[j])
            res.append(max(temp))
        res.append(-1)
        return res
