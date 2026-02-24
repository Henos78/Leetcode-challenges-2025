class Solution:
    def getConcatenation(self, nums: List[int]) -> List[int]:
        res = []

        for i in nums:
            res.append(i)

        for j in nums:
            res.append(j)

        return res

        