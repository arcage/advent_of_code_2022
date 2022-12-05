p STDIN.each_line.count{|l|r=l.split(',').map{|e|a=e.split('-').map(&.to_i);(a[0]..a[1]).to_set};r.includes?(r[0]&r[1])}
