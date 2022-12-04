p STDIN.each_line.map{|l|e,i=l.split(' ').map{|c|c[0].ord};(i-88)*3+(e+i-1)%3+1}.sum
