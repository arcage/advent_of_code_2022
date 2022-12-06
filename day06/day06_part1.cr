b=[]of Char
gets.not_nil!.each_char{|c|b<<c;break if b.size>3&&b[-4,4].uniq.size==4}
p b.size
