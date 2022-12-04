p STDIN.gets_to_end.chomp.split("\n\n").map{|e|e.split('\n').map(&.to_i).sum}.sort[-3,3].sum
