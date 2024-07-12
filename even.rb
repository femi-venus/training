def odd_or_even(arr,choice)
  even = []
  odd = []
  str = ""
  for num in arr
    if num % 2 == 0 
      even << num
    else 
      odd << num
    end
  end
  if choice == "even"
    str = even
  elsif choice == "odd"
    str = odd
  else
    str = "invalid input"
  end
  str
end
odd_or_even([2,3,4,5], 'even')

 

