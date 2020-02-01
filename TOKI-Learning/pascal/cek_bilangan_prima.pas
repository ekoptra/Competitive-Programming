var
	n, i, angka, j : longint;
	prima : boolean;
begin
	readln(n);
	for i := 1 to n do
	begin
		readln(angka);
		prima := true;
		for j := 2 to trunc(sqrt(angka)) do
			if angka mod j = 0 then
			begin
				prima := false;
				break;
			end;
		if angka = 1 then
			writeln('BUKAN')
		else if prima then
			writeln('YA')
		else
			writeln('BUKAN');
	end;
end.