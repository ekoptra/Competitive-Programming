var
	n : array[0..24999] of integer;
	i, p : integer;
begin
	p := 0;
	while not eof(input) do
	begin
		readln(n[p]);
		inc(p);
	end;
	for i := p-1 downto 0 do
		writeln(n[i]);
end.