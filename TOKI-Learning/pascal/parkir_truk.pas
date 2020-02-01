var
	a, b, c, i, j : byte;
	total : integer;
	d, p : array [0..2] of byte;
	w : array [0..2,0..99] of boolean;
begin
	read(a,b,c);
	
	for i := 1 to 3 do
	begin
		read(d[i-1],p[i-1]) ;
	end;
	
	for i := 1 to 3 do
		for j := d[i-1] to p[i-1]-1 do
			w[i-1][j] := true;
	
	total := 0;
	for i := 1 to 100 do
		if (not w[0][i-1]) and (not w[1][i-1]) and (not w[2][i-1]) then
			continue
		else if w[0][i-1] and w[1][i-1] and w[2][i-1] then
			total := total + (3*c)
		else if w[0][i-1] and w[1][i-1] then
			total := total + (2*b)
		else if w[1][i-1] and w[2][i-1] then
			total := total + (2*b)
		else if w[0][i-1] and w[2][i-1] then
			total := total + (2*b)
		else
			total := total + a;
			
	writeln(total);
end.	
