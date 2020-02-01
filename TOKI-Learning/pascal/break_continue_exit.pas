var
	n, i : byte;
begin
	readln(n);
	for i := 1 to n do
		if i mod 10 = 0 then
			continue
		else if i = 42 then
		begin
			writeln('ERROR');
			break;
		end else
			writeln(i);
end.