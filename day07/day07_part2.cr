alias S=String
T=[]of D
class D
getter n,r,c
def initialize(@n="",@r : D?=nil,@c={}of S=>D|F);T<<self;end
def s : Int32;c.map{|n,i|i.s}.sum;end
end
record F,n : S,s : Int32
r=d=D.new()
STDIN.gets_to_end.split(/\n?\$ /).map(&.split('\n')).each{|o|m=o.shift.split(' ')
if m[0]=="cd"
case m[1]
when ".."
d=d.r.not_nil!
when "/"
d=r
else
d=d.c[m[1]].as(D)
end
else
o.each{|e|t,n=e.split(' ');d.c[n]=(t=="dir"? D.new(n,d): F.new(n,t.to_i))}
end}
p T.map(&.s).select(&.>=(r.s-40000000)).min
