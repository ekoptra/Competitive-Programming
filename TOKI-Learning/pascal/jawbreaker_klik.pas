var
	isi : array [1..25,1..25] of byte;
	visited : array [1..25,1..25] of boolean;
	m,n,b,k,i,j : byte;

function hitung(x, y, c : byte):longint;
begin
	if (x < 1) or (x > m) or (y < 1) or (y > n) then
		hitung := 0
	else if (visited[x][y]) or (isi[x][y] <> c) then
		hitung := 0
	else
	begin
		visited[x][y]:= true;
		hitung := hitung(x+1,y,c) + hitung(x-1,y,c) + hitung(x,y+1,c) + hitung(x, y-1,c) + 1;
	end;
end;

function poin(x : longint):longint;
begin
	poin := x*(x-1);
end;

begin
	readln(m,n);
	for i := 1 to m do
	begin
		for j := 1 to n do
			read(isi[i][j]);
		readln;
	end;
	readln(b,k);
	writeln(poin(hitung(b+1,k+1,isi[b+1][k+1])));
end.