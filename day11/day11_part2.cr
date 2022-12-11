alias S=String
class M
@@d=1
@n: S
getter i : Array(Int64)
@s: S
@d: Int32
@o: S
@t: Array(S)
getter b
def initialize(l)
@n=l[0][-2]
i=l[1][5..-1]
@s,@o=l[2][-2,2]
@i=i.map(&.to_i64)
@d=l[3][-1].to_i
@@d*=@d
@t=[l[4][-1],l[5][-1]]
@b=0u64
N[@n]=self
end
def r
while k=@i.shift?
@b+=1
o=(@o=~/^o/ ?k : @o.to_i)
w=(@s=="*" ?k*o : k+o)
N[@t[w%@d<=>0]].a(w%@@d)
end
end
def a(w)
i<<w
end
end
N={}of S=>M
m=STDIN.gets_to_end.split("\n\n").map{|l|M.new(l.split('\n').map(&.split(/:|,? /)))}
10000.times{|i|m.map(&.r)}
p m.map(&.b).sort[-2,2].product
