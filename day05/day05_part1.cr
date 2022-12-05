i,m=STDIN.gets_to_end.split("\n\n").map(&.split('\n'))
t=Array(Array(Char)).new(i.pop.split(' ').reject!(&.empty?).size){[]of Char}
while l=i.pop?;t.each_index{|i|n=l[i*4+1];t[i]<<n if n!=' '};end
m.map(&.split(' ').in_groups_of(2).map(&.last.not_nil!.to_i)).each{|c|c[0].times{t[c[2]-1]<<t[c[1]-1].pop}}
puts t.map(&.last).join
