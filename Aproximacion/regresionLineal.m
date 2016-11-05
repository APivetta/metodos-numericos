function [a,b,R2] = regresionLineal(x,y)
	z = sum(x.*y);
	t = sum(x);
	q = sum(y);
	w = sum(x.*x);
	n = length(x);

	a = ((n*z)-(t*q))/((n*w)-(t^2));
	b = ((w*q)-(t*z))/((n*w)-(t^2));

	y2 = mean(y);
	v1 = arrayfun(@(xi) (a*xi+b-y2)^2,x);
	v2 = arrayfun(@(yi) (yi-y2)^2,y);

	R2 = sum(v1)/sum(v2);
endfunction

[a,b,r] = regresionLineal([1,2,3,4,5],[7.14,8.58,7.96,-1.51,-1.37])
[a2,b2,r2] = regresionLineal([1,2,3,4,5,6,7],[0.5,2.5,2.0,4.0,3.5,6.0,5.5])