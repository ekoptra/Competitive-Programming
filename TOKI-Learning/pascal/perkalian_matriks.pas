var
	matriks1, matriks2 : array [1..100,1..100] of byte;
	n, m, p, i, j, k : byte;
	tmp : longint;
	
begin
	readln(n,m,p);
	for i := 1 to n do
	begin
		for j := 1 to m do
			read(matriks1[i][j]);
		readln;
	end;
	
	for i := 1 to m do
	begin
		for j := 1 to p do
			read(matriks2[i][j]);
		readln;
	end;
	
	for i := 1 to n do
		for j := 1 to p do
		begin
			tmp := 0;
			for k := 1 to m do
				tmp := tmp + (matriks1[i][k]*matriks2[k][j]);
			write(tmp);
			if j < p then
				write(' ')
			else
				writeln;
		end;
end.