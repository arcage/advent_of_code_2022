alias I=Int32
alias A=Array
M=I::MAX
u=g={0,0}
x=y=0
a=Hash({I,I},I).new
STDIN.each_line{|l|x=0
l.chars.each{|c|a[{x,y}]=case c
when 'S'
u={x,y}
97
when 'E'
g={x,y}
122
else
c.ord
end
x+=1}
y+=1}
t=[[u]]
s=Hash({I,I},I).new(M)
s[u]=0
loop{b=[]of {I,I}
t.pop.each{|c|
[{0,1},{0,-1},{1,0},{-1,0}].map{|q,r|n={c[0]+q,c[1]+r}
next unless a.has_key?(n)&&a[n]<=a[c]+1
if s[n]-s[c]>1
s[n]=s[c]+1
b<<n
end}
t<<b unless b.empty?}
break if t.empty?}
p s[g]
