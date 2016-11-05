function [x,t] = regulaFalsi(a,b,f,eps,n)
	f = inline(f);
	i = 1;
	t = [];
	while i <= n
		x = b - ((f(b)*(a-b))/(f(a)-f(b)));
		t = [t,x];
		if (abs(f(x)) <= eps)
			break;
		elseif (f(x)*f(a) < 0)
			b = x;
		else
			a = x;
		endif
		i = i + 1;
	endwhile
endfunction

[x,t] = regulaFalsi(1,2,"x^3 + 4*x^2 - 10",10^-6,20)			
[x,t] = regulaFalsi(0,1,"x - cos(x)",10^-6,20)			