var
	n, i, angka, j, faktor : cardinal;
begin
	readln(n);
	for i := 1 to n do
	begin
		readln(angka);
		faktor := 0;
		for j := 2 to trunc(angka/3) do
			if faktor > 2 then
				break
			else if angka mod j = 0 then
				inc(faktor);
				
		if faktor <= 2 then
			writeln('YA')
		else
			writeln('BUKAN');
	end;
end.