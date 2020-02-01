var
	n, k, i : byte;
begin
	readln(n,k);
	for i := 1 to n-1 do
		if i mod k = 0 then
			write('* ')
		else
			write(i,' ');
	if n mod k = 0 then
		writeln('*')
	else
		writeln(n);
end.