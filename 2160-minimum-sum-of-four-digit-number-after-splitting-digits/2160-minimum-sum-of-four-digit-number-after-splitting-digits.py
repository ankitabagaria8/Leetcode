class Solution:
    def minimumSum(self, num: int) -> int:
        small = []
        large = []
        l = []
        for i in str(num):
            l.append(i) 

        l.sort()

        print(l)
        a = l[0]
        b = l[3]
        c = l[1]
        d = l[2]
        print(a,b,c,d)
        small.append([a,b])
        large.append([c,d])
        minumum = ''
        maximum = ''
        for i in small:
            minimum = i
        for j in large:
            maximum = j 
        x = ''.join(minimum)
        y = ''.join(maximum)
        return int(x) + int(y)
        