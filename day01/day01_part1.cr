p STDIN.gets_to_end.chomp.split("\n\n").map(&.split('\n').map(&.to_i).sum).max
