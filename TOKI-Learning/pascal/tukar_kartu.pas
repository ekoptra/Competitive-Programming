procedure swap(var a, b : longint);
var 
	temp : longint;
begin
	temp := a;
	a := b;
	b := temp;
end;

var
	n, i, j, k : integer;
	x : array [1..1000] of longint;
	tukar : longint;
begin
	tukar := 0;
	readln(n);
	for i := 1 to n do
	begin
		readln(x[i]);
		k := i;
		for j := i-1 downto 1 do
		begin
			if (x[k] < x[j]) then
			begin
				swap(x[k], x[j]);
				inc(tukar);
				dec(k);
			end
			else
				break;
		end;
				
	end;
	
	writeln(tukar);
end.