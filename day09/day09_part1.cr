d={"U"=>[0,1],"D"=>[0,-1],"R"=>[1,0],"L"=>[-1,0]}
h,t=[0,0],[0,0]
v=Set{t.dup}
STDIN.each_line.map(&.split(' ')).each{|m|s=m[1].to_i
while s>0
h=h.zip(d[m[0]]).map(&.sum)
if(h[0]-t[0])**2+(h[1]-t[1])**2>2
t[0]+=(h[0]<=>t[0])
t[1]+=(h[1]<=>t[1])
end
v<<t.dup
s-=1
end}
p v.size
