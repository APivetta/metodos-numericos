function s = trapecios(n,a,b,f)
	x = linspace(a,b,n+1);
	y = arrayfun(@(xi) (f(xi)),x);
	h = (b-a)/(n);
	s = (f(a) + f(b) + sum(y(2:n))*2 ) * h/2;
endfunction

s1 = trapecios(1,1,2,@(x) (4))
s2 = trapecios(1,1,2,@(x) (x))
s3 = trapecios(4,1,2,@(x) (x^2))