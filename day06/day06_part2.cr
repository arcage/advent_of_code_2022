b=[]of Char
gets.not_nil!.each_char{|c|b<<c;break if b.size>13&&b[-14,14].uniq.size==14}
p b.size
