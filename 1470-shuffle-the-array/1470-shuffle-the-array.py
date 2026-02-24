class Solution:
    def shuffle(self, nums: List[int], n: int) -> List[int]:
        arr1  =  []
        arr2 = []
        res =[]
        a,b = 0, n
        m =n+1

        while m>1:
            arr1.append(nums[a])
            arr2.append(nums[b])
            a+=1
            b+=1
            m-=1
        
        for i in range(len(arr1)):
            res.append(arr1[i])
            res.append(arr2[i])
        
        return res





        
        