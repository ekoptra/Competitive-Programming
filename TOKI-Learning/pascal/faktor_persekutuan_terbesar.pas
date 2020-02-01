procedure tukar(var a, b : longint);
var
	temp : longint;
begin
	if (a < b) then 
	begin
		temp := a;
		a := b;
		b := temp;
	end;
end;

function fpb(x1,x2 : longint):longint;
begin
	tukar(x1,x2);
	if (x2 = 0) then
		fpb := x1
	else
	begin
		fpb := fpb(x2,(x1 mod x2));
	end;
end;

var
	t, i : integer;
	a, b : longint;
begin
	readln(t);
	for i := 1 to t do
	begin
		read(a,b);
		writeln(fpb(a,b));
	end;
end.