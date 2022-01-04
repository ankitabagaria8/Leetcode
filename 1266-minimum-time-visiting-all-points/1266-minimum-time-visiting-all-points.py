class Solution:
    def minTimeToVisitAllPoints(self, points: List[List[int]]) -> int:
        enter = 0
        for i in range(len(points)):
            if i+1 < len(points):
                x1 = points[i][0]
                y1 = points[i][1]

                x2 = points[i+1][0]
                y2 = points[i+1][1]

                if abs(x1 - x2)> abs(y1-y2):
                    enter += abs(x1 - x2)
                else:
                    enter += abs(y1 - y2)

        return enter

        