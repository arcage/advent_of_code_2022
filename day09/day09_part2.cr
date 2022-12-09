d={"U"=>[0,1],"D"=>[0,-1],"R"=>[1,0],"L"=>[-1,0]}
b=Array.new(10){[0,0]}
v=Set{b[-1].dup}
STDIN.each_line.map(&.split(' ')).each{|m|s=m[1].to_i
while s>0
b[0]=b[0].zip(d[m[0]]).map(&.sum)
(0..8).each{|i|h,t=b[i,2]
if(h[0]-t[0])**2+(h[1]-t[1])**2>2
t[0]+=(h[0]<=>t[0])
t[1]+=(h[1]<=>t[1])
end}
v<<b[-1].dup
s-=1
end}
p v.size
