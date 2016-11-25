function [x,t] = puntoFijo(x0,eps,n,g)
	g = inline(g);
	i = 1;
	x = g(x0);
	t = [x0, x];
	while abs(x-x0) > eps && i < n
		x0 = x;
		x = g(x);
		t = [t,x];
		i = i + 1;
	endwhile
endfunction

cos = puntoFijo(0,0.001,20,"cos(x)")
