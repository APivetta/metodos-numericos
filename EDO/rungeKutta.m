function [x,y] = rungekutta(n,a,b,y0,f)
	h = (b-a)/n;
	x = [a];
	y = [y0];
	for i = 1:n
		k1 = f(x(i),y(i));
		k2 = f(x(i)+h/2,y(i)+k1*h/2);
		k3 = f(x(i)+h/2,y(i)+k2*h/2);
		k4 = f(x(i)+h,y(i)+k3*h);
		x = [x,x(i)+h];
		y = [y,y(i)+(k1+2*k2+2*k3+k4)*h/6];
	endfor
endfunction

[x,y] = rungekutta(4,0,0.4,1,@(x,y) (x^2-3*y))