function s = simpson(n,a,b,f)
	x = linspace(a,b,n+1);
	y = arrayfun(@(xi) (f(xi)),x);
	h = (b-a)/(n);
	s = (f(a) + f(b) + 4*sum(y(2:2:n)) + 2*sum(y(3:2:n))) * h/3;
endfunction

s1 = simpson(2,1,2,@(x) (4))
s2 = simpson(2,1,2,@(x) (x))
s3 = simpson(4,2,4,@(x) (x^2))