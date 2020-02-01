var
	total, a : longint;
begin
	total := 0;
	while not eof(input) do
	begin
		readln(a);
		total += a;
	end;
	writeln(total);
end.