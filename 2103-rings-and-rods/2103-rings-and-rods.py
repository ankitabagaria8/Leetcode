class Solution:
    def countPoints(self, rings: str) -> int:
        length = len(rings)
        colour = {}
        for n in range(1,length,2):
            colour[rings[n]] = colour.get(rings[n],'') + rings[n-1]

        temp = []
        for key, value in colour.items():
            temp.append(value)
        final = []
        for i in temp:
            x = list(set(i))
            final.append(x)

        fin = []
        for j in final:
            y = len(j)
            fin.append(y)
        res = sum([1 for k in fin if k ==3])
        return res

        