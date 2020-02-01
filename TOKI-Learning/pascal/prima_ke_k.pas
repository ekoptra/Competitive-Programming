var
	prima : array [2..1000000] of boolean;
	prima_ke, data : array [1..77777] of longint;
	n, i, j, k, a, p : longint;
begin
	
	p := 1000000;
	for i := 2 to p do
		prima[i] := true;
	
	k := 1;
	for i := 2 to p do
		if (prima[i]) then
		begin
			prima_ke[k] := i;
			inc(k);
			for j := 2 to (p div i) do
				prima[i*j] := false;
		end;
	
	readln(n);
	for i := 1 to n do
	begin
		readln(a);
		writeln(prima_ke[a]);
	end;
		
end.