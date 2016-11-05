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

[x,t] = newtonRaphson(15,"(e/3*x*exp(-x/3))-0.25","e/3*(1-x/3)*exp(-x/3)",10^-6,20);
#TODO [x2,t2] = newtonRaphson(30,"(0.75*e/3*(x-11.077)*exp(-(x-11.077)/3))+((e/3*x*exp(-x/3)))-0.25","",10^-6,20);
[x3,t3] = newtonRaphson(4,"80*exp(-2*x)+20*exp(-x/2)-7","-160*exp(-2*x)-10*exp(-x/2)",10^-6,400) 
