var
	x : array[1..1000000] of longint;
	lantai, n, k, i, max : longint;
	total : qword;
begin
	read(n,k);
	lantai := 1;
	total := 0;
	max := 1;
	for i := 1 to n do
	begin
		readln(x[i]);
		if x[max] < x[i] then
			max := i;
		if (i mod k = 0) then
		begin
			total := total + x[max];
			max := i + 1;
			inc(lantai);
		end;
		
		if (n=i) and (i mod k <> 0) then
			total := total + x[max];
			
	end;
	
	if (n mod k = 0) then
		dec(lantai);
		
	writeln(total+1+lantai);
end.