def harshad (number)
    sum = 0
    str =""
    num = number.to_s
    digits = num.split("")
    digits.each {|digit|
    int = digit.to_i
    sum += int}
    if number % sum == 0
        str = "#{number} is a Harshad number."
    else 
        str = "#{number} is not a Harshad number."
    end
     str 
end
 harshad (156)