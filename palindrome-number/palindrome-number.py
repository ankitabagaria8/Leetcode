class Solution:
    def isPalindrome(self, x: int) -> bool:
        add = 0
        status = False
        
        if int(x) >= 0:
            x = str(x)
            for i in reversed(range(len(str(x)))):
                add += int(x[i])*(10**i)
                if add == int(x):
                    status = True
                else:
                    status
        else:
            status
        return status