C=[0,1,0]
D=[]of Char
def c
C[0]+=1
C[2]+=C[0]*C[1] if(C[0]-20)%40<1
D<<(((((C[0]-1)%40)-C[1])**2<2)? '#': '.')
end
STDIN.each_line{|l|if l=~/^n/
c
else
c
c
C[1]+=l.split(' ')[1].to_i
end}
puts D.in_groups_of(40,0).map(&.join).join('\n')
