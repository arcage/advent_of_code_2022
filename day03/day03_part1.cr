p STDIN.each_line.map{|l|s=l.size//2;a=l.to_slice;(a[0,s].to_set&a[s,s].to_set).map{|c|c-(c>90?96:38)}.sum(0u64)}.sum
