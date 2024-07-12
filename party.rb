def party(p1,p2)
  data = [[1,'a','d'],[5,'g','c'],[3,'c','e'],[6,'a','f'],[8,'l','m'],[3,'d','a']]
  ans = data.select do |meets|
   return -1 if p1 == p2
    (meets.include? p1) && (meets.include? p2)
  end.map{ |x| x[0] }
  if ans == nil || ans == []
    return -1
  else
    return ans
  end
end

def tests
  meeting_time = (party('a','f') == [6])
  did_not_meet = (party('c','a') == -1)
  same_person = (party('a','a') == -1)
  met_more_than_once = (party('a','d')== [1,3])
  result = [meeting_time, did_not_meet,met_more_than_once, same_person]
  if result.all?(true)
    puts "All Pass!"
  else
    result
   
  end
end
puts tests
