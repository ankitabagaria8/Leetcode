class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:
        ransomnote = list(ransomNote)
        magazine = list(magazine)
        x = len(magazine)
        res = False
        for i in range(len(ransomnote)):
            if ransomnote[i] in magazine:
                magazine.remove(ransomnote[i])
        if (x- len(magazine)) == len(ransomnote):
            res = True
        
        return res