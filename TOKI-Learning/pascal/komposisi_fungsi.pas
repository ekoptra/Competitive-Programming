var
	a, i, b, k, x : integer;

function hasil(y: integer):integer;
var
	tmp : integer;
begin
	tmp := (a*y) + b;
	if tmp < 0 then
		hasil := -1*tmp
	else
		hasil := tmp;
end;

begin
	readln(a,b,k,x);
	for i := 1 to k do
		x := hasil(x);
	writeln(x);
end.
