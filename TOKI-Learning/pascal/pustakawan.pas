procedure swap(var a, b : longint);
var 
	temp : longint;
begin
	temp := a;
	a := b;
	b := temp;
end;

var
	n, i, j, minim : integer;
	x : array [1..1000] of longint;
	tukar : longint;
begin
	readln(n);
	for i := 1 to n  do
		readln(x[i]);
	
	tukar := 0;
	for i := 1 to n-1 do
	begin
		minim := i;
		for j := i to n do
			if(x[minim] > x[j]) then
				minim := j;
		
		if (minim <> i) then
		begin
			swap(x[i],x[minim]);
			inc(tukar);
		end;
	end;
	
	writeln(tukar);
end.