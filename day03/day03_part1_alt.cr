p STDIN.each_line.map{|l|l.to_slice.each_slice(l.size//2).map(&.to_set).reduce{|a,i|a&i}.map{|c|c-(c>90?96:38)}.sum}.sum
# I think this is more elegant as an one-liner but 3 bytes longer than current one.
