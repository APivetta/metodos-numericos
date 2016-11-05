function s = romberg(j,a,b,f)
	h = (b-a)/(2^j);
	s = rombergIt(j,h,a,b,f);
endfunction

function s = trapeciosH(h,a,b,f)
	n = (b-a)/h;
	x = linspace(a,b,n+1);
	y = arrayfun(@(xi) (f(xi)),x);
	s = (f(a) + f(b) + sum(y(2:n))*2 ) * h/2;
endfunction

function s = rombergIt(j,h,a,b,f)
	if (j == 0)
		s = trapeciosH(h,a,b,f);
	else
		s = ( 4^j * rombergIt(j-1,h,a,b,f) - rombergIt(j-1,2*h,a,b,f)) / (4^j-1);
	endif
endfunction

x1 = romberg(0,0,4,@(x) (x))
x2 = romberg(1,0,4,@(x) (x^2))
x3 = romberg(2,0,4,@(x) (x^2))
x4 = romberg(3,0,10,@(x) (x^3))
x5 = romberg(3,0,2*pi,@(x) (e^(2-(0.5*sin(x)))));
x5 = x5 * pi/2