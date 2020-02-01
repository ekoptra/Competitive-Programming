procedure tukar(var a, b : longint);
var
	temp : longint;
begin
	temp := a;
	a := b;
	b := temp;
end;

var
	k, jawab : array [1..100000] of longint;
	m, q, i, n, x1,x2 : longint;
begin
	readln(n,m);
	for i := 1 to n do
		k[i] := i;
	
	for i := 1 to m do
	begin
		readln(x1,x2);
		tukar(k[x1],k[x2]);
	end;
	
	readln(q);
	
	for i := 1 to q do
	begin
		readln(x1);
		jawab[i] := k[x1];
	end;
	
	for i := 1 to q do
		writeln(jawab[i]);

end.