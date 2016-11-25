function x = gauss(A,b)
	Adiag = descendente(A,b)
	x = ascendente(Adiag);
endfunction

function x = ascendente(A)
	n = rows(A);
	x(n) = A(n,n+1);
	for i = n-1:-1:1;
		s = 0;
		for j = i+1:n;
			s += A(i,j)*x(j);
		endfor
		x(i) = A(i,n+1) - s;
	endfor
endfunction

function Aext = descendente(A,b)
	Aext = [A,transpose(b)]
	n = rows(A);
	for p = 1:n-1;
		for j = p+1:n+1;
			Aext(p,j) = Aext(p,j)/Aext(p,p);
		endfor
		for i = p+1:n;
			for j = p+1:n+1;
				Aext(i,j) = Aext(i,j) - Aext(i,p)*Aext(p,j);
			endfor
		endfor
	endfor
	Aext(n,n+1) = Aext(n,n+1)/Aext(n,n);
endfunction

x = gauss([-2,0,-2;2,2,4;0,1,0],[-10,16,0])
