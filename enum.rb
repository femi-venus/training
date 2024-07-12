#How many students have got the same mark in english?
data[:marks].select{|x|x[:subject]=="English"}.group_by{|x|x[:marks]}.each_with_object({}){|(k,v),count|count[k]= v.map{|x|x[:marks]}.count}

# how many students have got more than 70 in all subjects?
data[:marks].select{|x|x[:marks]== 70}.map{|x|x[:id]}.uniq.count

grp_id =data[:marks].select{|x|x[:id]}
grp_id.map{|x|x [:marks] > 70 }