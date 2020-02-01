var
	prima, faktor : array [2..1000000] of boolean;
	pangkat : array [2..1000000] of longint;
	n, i, j, k, max, pangkat1 : longint;
begin
	readln(n);
	
	for i := 2 to n do
		prima[i] := true;
	
	k := n;
	max := 2;
	for i := 2 to n do
	begin
		pangkat1 := 0;
		if (prima[i]) then
		begin
			for j := i to (n div i) do
				prima[i*j] := false;
		
			while (k mod i = 0) do
			begin
				inc(pangkat1);
				k := k div i;
			end;
			
			if (pangkat1 <> 0) then
			begin
				faktor[i] := true;
				pangkat[i] := pangkat1;
				max := i;
			end;
		end;
	end;
	
	for i := 1 to max-1 do
		if (faktor[i]) then
			if (pangkat[i] <> 1) then
				write(i,'','^','',pangkat[i],' ','x',' ')
			else
				write(i,' ','x',' ');
	
	if (pangkat[max] > 1) then
		writeln(max,'','^','',pangkat[max])
	else
		writeln(max);
	
end.