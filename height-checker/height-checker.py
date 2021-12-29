class Solution:
    def heightChecker(self, heights: List[int]) -> int:
        final = sorted(heights)
        count = 0
        for i in range(len(heights)):
            if heights[i] != final[i]:
                count += 1
        return count