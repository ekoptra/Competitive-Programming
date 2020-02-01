var
	x : array [0..99,0..99] of byte;
	n, m, i, j : byte;
begin
	read(n,m);
	for i := 1 to n do
	begin
		for j := 1 to m do
			read(x[i-1][j-1]);
	end;
	
	for i := 1 to m do
	begin
		for j := n downto 2 do
			write(x[j-1][i-1], ' ');
		writeln(x[0][i-1]);
	end;
end.