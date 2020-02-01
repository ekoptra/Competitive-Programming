procedure tukar(var a, b : integer);
var
	temp : integer;
begin
	temp := a;
	a := b;
	b := temp;
end;

var
	n, i, j, median, y, k: longint;
	x : array [-8000..8000] of integer;
begin
	readln(n);
	for i := 1 to n do
	begin
		read(y);
		x[y] := x[y] + 1;
	end;
		
	
	median := (n div 2) +1;
	k := 0;
	for i := -8000 to 8000 do
		for j := 1 to x[i] do
		begin
			inc(k);
			if (k = median) then
			begin
				if (n mod 2 = 1) then
					writeln(i)
				else
					writeln(((i+y)/2):0:2);
			end;
			y := i;
		end;
	
end.