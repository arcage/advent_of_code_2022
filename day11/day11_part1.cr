alias S=String
class M
@n: S
getter i : Array(Int32)
@s: S
@d: Int32
@o: S
@t: Array(S)
getter b
def initialize(l)
@n=l[0][-2]
i=l[1][5..-1]
@s,@o=l[2][-2,2]
@i=i.map(&.to_i)
@d=l[3][-1].to_i
@t=[l[4][-1],l[5][-1]]
@b=0
N[@n]=self
end
def r
while k=@i.shift?
@b+=1
o=(@o=~/^o/ ? k : @o.to_i)
w=(@s=="*" ? k*o : k+o)//3
N[@t[w%@d<=>0]].a(w)
end
end
def a(w)
i<<w
end
end
N={}of S=>M
m=STDIN.gets_to_end.split("\n\n").map{|l|M.new(l.split('\n').map(&.split(/:|,? /)))}
20.times{|i|m.map(&.r)}
p m.map(&.b).sort[-2,2].product
