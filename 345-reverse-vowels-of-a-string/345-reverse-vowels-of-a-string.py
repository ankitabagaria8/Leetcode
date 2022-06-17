class Solution:
    def reverseVowels(self, s: str) -> str:
        vow = []
        for i in s:
            if i in ('a','e','i','o','u','A','E','I','O','U'):
                vow.append(i)
        vow = vow[::-1]
        cons = []
        for j in s:
            if j not in ('a','e','i','o','u','A','E','I','O','U'):
                cons.append(j)
            else:
                cons.append(vow[0])
                vow.remove(vow[0])

        string = ''
        for m in cons:
            string += m
        
        return string