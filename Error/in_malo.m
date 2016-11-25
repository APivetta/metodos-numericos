format long
I = [log(11/10)];
for n = 2 : 25
	I(n) = 1/n -10*I(n-1);
endfor
I