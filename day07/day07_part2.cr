alias S=String
record D,n = "",c={}of S=>D|F{def s : Int32;c.map{|n,i|i.s}.sum;end}
record F,n : S,s : Int32
T=[D.new()]
r=T[0]
t=[r]
STDIN.gets_to_end.split(/\n?\$ /).map(&.split('\n')).each{|o|m=o.shift.split(' ')
d=t[-1]
if m[0]=="cd"
case h=m[1]
when ".."
t.pop
when "/"
t=[r]
else
t<<d.c[h].as(D)
end
else
o.each{|e|l,n=e.split(' ');d.c[n]=(l=="dir"? (T<<D.new(n))[-1]: F.new(n,l.to_i))}
end}
p T.map(&.s).select(&.>=(r.s-4e7.to_i)).min
