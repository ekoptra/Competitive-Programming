var
	a, i : longint;
begin
	readln(a);
	for i := a downto 1 do
		if a mod i = 0 then
			writeln(i);
end.