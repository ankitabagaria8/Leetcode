class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        pattern = list(pattern)
        se = []
        for i in s.split(' '):
            se.append(i)
        dictionary = {}
        res = True
        if len(pattern) != len(se):
            return False
        for j in range(len(pattern)):
            if pattern[j] not in dictionary:
                dictionary[pattern[j]] = se[j]
            else:
                if dictionary.get(pattern[j]) != se[j]:
                    res = False

        val = [v for v in dictionary.values()]
        if len(set(val)) != len(val):
            res = False
        return res