alias S=String
record D,n = "",c={}of S=>D|F{def s : Int32;c.map{|n,i|i.s}.sum;end}
record F,n : S,s : Int32
T=[D.new()]
t=[T[0]]
STDIN.gets_to_end.split(/\n?\$ /).map(&.split('\n')).each{|o|m=o.shift.split(' ')
if m[0]=="cd"
case m[1]
when ".."
t.pop
when "/"
t=[t[0]]
else
t<<t[-1].c[m[1]].as(D)
end
else
o.each{|e|l,n=e.split(' ');t[-1].c[n]=(l=="dir"? (T<<D.new(n))[-1]: F.new(n,l.to_i))}
end}
p T.map(&.s).select(&.<(100001)).sum
