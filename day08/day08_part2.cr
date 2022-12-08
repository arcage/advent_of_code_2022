m=STDIN.gets_to_end.split('\n').map{|l|l.split("").map{|h|[h.to_i,0]}}
y=(0...m.size).to_a
x=(0...m[0].size).to_a
p x.each_cartesian(y).map{|o|a,b=o
h=m[b][a][0]
[{0,1},{0,-1},{1,0},{-1,0}].map{|e,f|s=0
c=a+e
d=b+f
while x.includes?(c)&&y.includes?(d)
s+=1
break if m[d][c][0]>=h
c+=e
d+=f
end
s}.product}.max
