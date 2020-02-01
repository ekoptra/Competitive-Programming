procedure tukar(var a, b : integer);
var 
	i : integer;
begin
	i := a;
	a := b;
	b := i;
end;

var
	a,b : integer;
begin
	read(a,b);
	tukar(a,b);
	writeln(a,' ',b);
end.