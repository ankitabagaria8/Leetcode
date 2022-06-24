class Solution:
    def nextGreaterElement(self, nums1: List[int], nums2: List[int]) -> List[int]:
        res = []

        for i in nums1:
            if i in nums2:
                if nums2.index(i) != len(nums2)-1:
                    flag = False
                    for k in range((nums2.index(i)+1),len(nums2)):
                        if nums2[k] > i:
                            res.append(nums2[k])
                            flag = True
                            break
                    if flag == False:
                        res.append(-1)

                else:
                    res.append(-1)
        return res