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

testCos = puntoFijo(0,0.001,20,"cos(x)");

//f(x) = x^3 + 4*x^2 - 10

[g1, l1] = puntoFijo(1,0.001,20,"x-x^3-4*(x^2)+10");
[g2, l2] = puntoFijo(1,0.001,20,"sqrt(10.0/x-4*x)");
[g3, l3] = puntoFijo(1,0.001,20,"0.5*sqrt(10-x^3)");
[g4, l4] = puntoFijo(1,0.001,20,"sqrt(10.0/(4.0+x))");
[g5, l5] = puntoFijo(1,0.001,20,"x-(x^3+4*(x^2)-10)/(3*(x^2)+8*x)");

[g1,g2,g3,g4,g5]
