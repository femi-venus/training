def postfix (input)
    precedence = {"+" => 1,"-" => 1,"*" => 2,"/" =>2}
    output = ""
    stack = []
    members = input.split("")
    members.each{|element|
    if  "a,b,c,d,e,f".include? element
        output += element
    elsif "+,-,*,/".include? element
        stack << element 
    end
    if precedence[stack.last] >= precedence [element]
        output += stack.pop
    end
    stack.pop
end


    
}
    output
end
postfix ("((a-(b/c)*((a/d)-e))")


element == ")"
        output += stack.pop until stack.last != "("
    else
        while !stack.empty? && precedence[stack.last] >= precedence[element]
            output += stack.pop
        end
        stack.pop
    end

    while !stack.empty? 
        output += stack.pop
    end