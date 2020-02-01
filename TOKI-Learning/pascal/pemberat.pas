function pangkat(p : byte):int64;
var
	i : byte;
	hasil : int64;
begin
	hasil := 1;
	for i := 1 to p do
		hasil := hasil*2;
		
	pangkat := hasil;
end;

procedure tulis(p : byte; a : int64);
var
	k : byte;
begin
	if (a <= 1) then
	begin
		if( a = 1) then
			writeln(pangkat(p));
	end
	else
	begin
		k := p;
		inc(p);
		tulis(p, a div 2);
		if (a mod 2 = 1) then
			writeln(pangkat(k));
	end;
end;

var
	b, k : int64;
begin
	readln(b,k);
	tulis(0,k-b);
end.