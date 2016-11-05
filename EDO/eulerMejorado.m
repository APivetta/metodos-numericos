function tabla = euler(f,g,a,b,n,y0)
	tabla = [];
	x = a;
	y = y0;
	h = (b-a)/n;
	for i = 1:n
		[x,y] = euler_i(f,x,y,h);
		u(i) = x;
		v(i)  = y;
		tabla = [tabla;i,g(x),y,g(x)-y];
	endfor
	plot(u,v,'r')
	grid on
	hold on
	fplot(g,[a,b])
	pause()
endfunction

function [x,y] = euler_i(f,x,y,h)
	k = f(x,y);
	x = x + h;
	q = f(x,y);
	y = y + h/2 * (k+q);
endfunction

euler(@(x,y) (x+1-y), @(x) (exp(-x)+x),0,0.5,5,1)