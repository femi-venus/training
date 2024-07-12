def palindrome(input) 
  output = ""
  rev = ""
  word = input.split("")

  word.each {|letter|
  rev = letter + rev
   }
  
  if input == rev
    output << "#{input} is a palindrome"
  else 
    output << " #{input} is not a palindrome"

  end
  output
end
 palindrome("malayalam")