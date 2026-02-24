class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        cnt= 0 
        max_cnt = 0

        for i in range(len(nums)):
            if nums[i]==1:
                cnt +=1
            else:
                cnt = 0
            max_cnt =max(cnt, max_cnt)

        return max_cnt

        