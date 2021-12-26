class Solution:
    def countNegatives(self, grid: List[List[int]]) -> int:
        final = 0
        for i in grid:
            count = 0
            for j in i:
                if j < 0:
                    count =+ 1
                final += count

        print(count)
        print(final)
        return final
