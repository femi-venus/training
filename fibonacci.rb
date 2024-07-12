def fibonacci(num1, seq_len)

num2 = num1
num3 = num2
count = 1
seq=[]
seq << num1
while count <= seq_len
  num1, num2 = num2,num3
   num3 = num1 + num2
   seq << num3
  count += 1
end 
  seq
end

 fibonacci(1,5)
 
