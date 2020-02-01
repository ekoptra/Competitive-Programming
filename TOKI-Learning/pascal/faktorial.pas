var
	n, a, nol : integer;
begin
	readln(n);
	a := 5;
	nol := 0;
	while a <= n do
	begin
		nol := nol + trunc(n div a);
		a := a*5;
	end;
	writeln(nol);
end.