var
	baris : array ['A'..'B',1..1000] of longint;
	n, t, i, x, y : longint;
	c, p, q, spasi : char;

procedure tukar(var a, b : longint);
var
	tmp : longint;
begin
	tmp := a;
	a := b;
	b := tmp;
end;

begin
	readln(n);
	for c := 'A' to 'B' do
	begin
		for i := 1 to n do
			read(baris[c][i]);
		readln;
	end;
	readln(t);
	for i := 1 to t do
	begin
		readln(p,spasi,x,spasi,q,spasi,y);
		tukar(baris[p][x],baris[q][y]);
	end;
	for c := 'A' to 'B' do
	begin
		for i := 1 to n-1 do
			write(baris[c][i],' ');
		writeln(baris[c][n]);
	end;
end.