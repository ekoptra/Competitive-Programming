var
	n, i: byte;
	total : longint;
begin
	readln(n);
	
	total := 0;
	for i := 1 to n do
		total := total + (i*i);
	
	writeln(total);
end.