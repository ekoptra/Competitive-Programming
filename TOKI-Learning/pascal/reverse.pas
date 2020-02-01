var
	s, balik : ansistring;
	i : word;
begin
	readln(s);
	
	for i := length(s) downto 1 do
		balik := balik + s[i];
	
	writeln(balik);
end.