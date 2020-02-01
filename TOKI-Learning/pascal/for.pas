var
	n,b,total,i : longint;
begin
	readln(n);
	total := 0;
	for i := 1 to n do
	begin
		read(b);
		total += b;
	end;
	readln;
	writeln(total);
end.