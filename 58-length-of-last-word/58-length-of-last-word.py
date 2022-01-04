class Solution:
    def lengthOfLastWord(self, s: str) -> int:
        word_list = s.strip(' ').split(' ')
        for i in word_list:
            if '' in word_list:
                word_list.remove('')

        last_word = word_list[-1]

        return len(last_word)
