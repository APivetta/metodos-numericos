function s = lagrange(x,y,r)
	n = length(x)
	s = 0;
	for k = 1 : n
		p = 1;
		for i = 1 : n
			if (k != i)
				p = p * (r - x(i))/(x(k)-x(i));
			endif
		endfor
		s = s + (p * y(k));
	endfor
endfunction

s = lagrange([0,1,2],[0,1,32],0.5)