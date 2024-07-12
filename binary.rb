def binary_conversion(num)
    arr = []
    new_arr = 0
  
   while num > 1
        rem = num % 2
         arr << rem 
         num /= 2
   end
   arr << 1
   new_arr = arr.reverse
   print new_arr
end
binary_conversion(100)

#binary search
def binary_search(array, n)
    arr = array.sort
      low = 0
      high = (arr.length) - 1
        
       while low <= high
        mid = (low + high) / 2
             
            if arr[mid] == n
               return mid
           elsif arr[mid] > n
             high = mid - 1
            else
               low = mid + 1
            end
         end
       "Not present in the array"
 end
     binary_search([2,48,23,12,50,100,78,73],50)
    

#find cuberoot using binary search

def cuberoot(n)
    arr = [1..n]
    low = 1
    high = n/2
    while low <= high
        mid = (low + high)/2
        if mid ** 3 == n
            return mid
        elsif mid ** 3 > n
            high = mid - 1
        else
            low = mid + 1
        end
    end
    "no perfect root"
end
cuberoot(27)