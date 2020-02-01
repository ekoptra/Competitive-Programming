var
	a, b : longint;

function reverse(x : longint):longint;
var
	tmp : longint;
begin
	tmp := 0;
	while x > 0 do
	begin
		tmp := (tmp*10) + (x mod 10);
		x := x div 10;
	end;
	reverse := tmp;
end;

begin
	readln(a,b);
	writeln(reverse(reverse(a)+reverse(b)));
end.