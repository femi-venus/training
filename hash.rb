1. cars.select{|x|x[:"year"]>2000}.count #O(n)
2. cars.group_by{|k,v|k[:make]}.each_with_object({}){|(k,v),make|make[k]=v.map{|x| x[:make]}.count}
3. cars.any?{|x| x[:year]>2000 && x[:make]=="Nissan"} #O(n)
4. cars.select{|x| x[:make]== "Toyota"}.map{|x|x[:email]} 
5. cars.select{|x|x[:gender]=="Male"}.sort_by{|x|x[:year]}[2][:model]
6. cars.group_by{|k|k [:year]}.sort
7. 