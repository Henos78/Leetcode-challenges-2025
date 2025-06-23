class Solution:
    def reverseVowels(self, s: str) -> str:
        temp = [i for i in 'aeiouAEIOU']

        i, j =0, len(s)-1 
        s = list(s)
        
        while i<j:
            if s[i] in temp and s[j] in temp:
                s[i], s[j] = s[j], s[i]
                i +=1
                j -=1
                
            if  s[j] not in temp:
                j-=1
                
            if  s[i] not in temp:
                i+=1
    
        
        return ''.join(s)
            
        
        