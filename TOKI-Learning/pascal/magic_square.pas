var
	t, n, i: longint;
	total : int64;
begin
	readln(t);
	for i := 1 to t do
	begin
		readln(n);
		total := (n*n*(1 + n*n)) div 2;
		writeln(total div n);
	end;
end.