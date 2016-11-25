function [x,t] = newtonRaphson(x0,f,f1,eps,n)
	f = inline(f);
	f1 = inline(f1);
	i = 1;
	t = [x0];
	while i <= n
		x = x0 - (f(x0)/f1(x0));
		if (abs(f(x)) < eps)
			break;
		endif
		x0 = x;
		i = i + 1;
		t = [t,x];
	endwhile
endfunction

[x1,t1] = newtonRaphson(15,"(e/3*x*exp(-x/3))-0.25","e/3*(1-x/3)*exp(-x/3)",10^-6,20);
[x2,t2] = newtonRaphson(4,"80*exp(-2*x)+20*exp(-x/2)-7","-160*exp(-2*x)-10*exp(-x/2)",10^-6,400);

[x1,x2]