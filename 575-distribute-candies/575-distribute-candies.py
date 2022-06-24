class Solution:
    def distributeCandies(self, candyType: List[int]) -> int:
        count = int(len(candyType)/2)
        set_candy = len((set(candyType)))
        if set_candy >= count:
            res = count
        else:
            res = set_candy
            
        return res