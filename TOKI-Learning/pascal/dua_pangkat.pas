var
	a : longint;
begin
	readln(a);
	while a mod 2 = 0 do
		a := a div 2;
	if a = 1 then
		writeln('ya')
	else
		writeln('bukan');
end.