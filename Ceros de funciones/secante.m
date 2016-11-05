function [x,t] = secante(x0,x1,f,eps,n)
	f = inline(f);
	i = 2;
	t = [x0,x1];
	while i <= n
		x = x1 - ((f(x1) * (x0 - x1)) / (f(x0) - f(x1)));
		if (abs(f(x)) < eps)
			break;
		endif
		x0 = x1;
		x1 = x;
		i = i + 1;
		t = [t,x];
	endwhile
endfunction

[x,t] = secante(0,1,"exp(-x) - x",10^-6,20)			