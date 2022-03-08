class Solution:
    def romanToInt(self, s: str) -> int:
        input_dict={'I': 1, 'V' : 5, 'X' : 10, 'L':50, 'C' : 100, 'D' : 500, 'M' : 1000}
        add = 0
        for i in range(len(str(s))):
            x = input_dict.get(s[i])
            if i == len(str(s)) -1:
                y = 0
            else:
                y = input_dict.get(s[i+1])
            if x >= y:
                add += x
            else:
                add -= x
        return add  
