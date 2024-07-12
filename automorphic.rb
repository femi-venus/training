
def automorphic(num) 
  str = ""
  square = num * num
  num_digits = num.to_s.length
  last_digits = square % (10 ** num_digits)
  if  last_digits == num
    str = "#{num} is an automorphic number."
  else
    str = "#{num} is not an  automorphic number."
  end
  str
end
 automorphic(25)