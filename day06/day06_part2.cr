b=[]of Char
STDIN.read_line.each_char{|c|b<<c;break if b.size>13&&b[-14,14].uniq.size==14}
p b.size
