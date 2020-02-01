var
	data : array [1..1000] of longint;
	n, i, tmp, max : longint;
begin
	readln(n);
	for i := 1 to n do
	begin
		read(tmp);
		inc(data[tmp]);
	end;
	readln;
	max := 1;
	for i := 1 to 1000 do
		if data[max] <= data[i] then
			max := i;
	writeln(max);
end.