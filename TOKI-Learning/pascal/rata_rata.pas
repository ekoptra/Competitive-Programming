var
	total : real;
	n, i, max, min : integer;
	x : array [0..9999] of real;
begin
	readln(n);
	max := 0;
	min := 0;
	total := 0;
	for i := 1 to n do
	begin
		readln(x[i-1]);
		if (x[max] < x[i-1]) then
			max := i-1;
		if (x[min] > x[i-1]) then
			min := i-1;
		total := total + x[i-1];
	end;
	
	writeln(x[min]:0:2,' ',x[max]:0:2,' ',(total/n):0:2);
end.