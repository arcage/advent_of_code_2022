C=[0,1,0]
def c
C[0]+=1
C[2]+=C[0]*C[1] if(C[0]-20)%40<1
end
STDIN.each_line{|l|if l=~/^n/
c
else
c
c
C[1]+=l.split(' ')[1].to_i
end}
p C[2]
