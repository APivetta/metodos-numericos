format long
I=[]
I(24) = 1/(25*11)
for n = 23:-1:1
	I(n) = (1/(n+1) - I(n+1))/10
endfor
I