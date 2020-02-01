var
	n, i, j, k: byte;
begin
	readln(n);
	k := 0;
	for i := 1 to n do
	begin
		for j := 1 to i do
		begin
			if k = 10 then
				k := 0;
			write(k);
			inc(k);
		end;
	writeln;
	end;
end.