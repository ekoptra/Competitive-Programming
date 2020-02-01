var
	x : array [2..600000] of longint;
	max,min, i : longint;
begin
	max := 2;
	min := 2;
	i := 2;
	while not eof(input) do
	begin
		readln(x[i]);
		if x[max] < x[i] then
			max := i;
		if x[min] > x[i] then
			min := i;
		inc(i);
	end;
	
	writeln(x[max]-x[min]);
end.