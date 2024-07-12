def armstrong(number, power)
    num = number.to_s
    sum = 0
    digits = num.split("")
    digits.each{|digit| 
    int = digit.gsub(",","").delete(" ")
    integer = int.to_i
    cube = integer ** power 
    sum += cube }
    sum
end
 armstrong(125,3)
