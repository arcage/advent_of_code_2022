p STDIN.each_line.map{|l|e,i=l.split(' ').map{|c|c[0].ord};(i-e-1)%3*3+i-87}.sum
