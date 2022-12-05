p STDIN.each_line.count{|l|x,y=l.split(',').map{|e|a=e.split('-').map(&.to_i);(a[0]..a[1]).to_set};!(x&y).empty?}
