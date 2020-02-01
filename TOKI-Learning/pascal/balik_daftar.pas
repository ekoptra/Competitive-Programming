var
	daftar : array [1..100] of longint;
	n, i : longint;
begin
	n := 0;
	while not eof(input) do
	begin
		inc(n);
		readln(daftar[n]);
	end;
	for i := n downto 1 do
		writeln(daftar[i]);
end.