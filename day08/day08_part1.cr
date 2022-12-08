m=STDIN.gets_to_end.split('\n').map{|l|l.split("").map{|h|[h.to_i,0]}}
x=0 ...m.size
y=0 ...m[0].size
y.each{|a|s=r=-1
x.each{|b|c=m[a][b]
if c[0]>s
c[1]=1;s=c[0]
end
d=m[a][-1-b]
if d[0]>r
d[1]=1;r=d[0]
end}}
x.each{|b|s=r=-1
y.each{|a|c=m[a][b]
if c[0]>s
c[1]=1;s=c[0]
end
d=m[-1-a][b]
if d[0]>r
d[1]=1;r=d[0]
end}}
p m.map(&.map(&.[1])).flatten.count(&.>(0))
