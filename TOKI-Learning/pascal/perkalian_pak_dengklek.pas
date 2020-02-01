var
	a, b, total, b2 : longint;
	a1,b1 : byte;
begin
	read(a, b);
	total := 0;
	b2 := b;
	while (a <> 0) do
	begin
		a1 := a mod 10;
		b := b2;
		while (b <> 0) do
		begin
			b1 := b mod 10;
			total := total + (a1*b1);
			b := b div 10;
		end;
		a := a div 10;
	end;
	writeln(total);
end.