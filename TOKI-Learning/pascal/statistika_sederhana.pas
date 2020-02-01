var
	n,a,b,i,tmp : longint;
begin
	readln(n);
	a := -100001;
	b := 100001;
	for i := 1 to n do
	begin
		read(tmp);
		if tmp > a then
			a := tmp;
		if tmp < b then
			b := tmp;
	end;
	readln;
	writeln(a, ' ', b);
end.