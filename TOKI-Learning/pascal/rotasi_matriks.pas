var
	data : array [1..100,1..100] of byte;
	n, m, i, j : byte;
begin
	readln(n,m);
	for i := 1 to n do
	begin
		for j := 1 to m do
			read(data[i][j]);
		readln;
	end;
	for j := 1 to m do
	begin
		for i := n downto 2 do
			write(data[i][j],' ');
		writeln(data[1][j]);
	end;
end.