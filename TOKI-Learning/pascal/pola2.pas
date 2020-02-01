var
	n, i, j: byte;
	tmp : string;
begin
	readln(n);
	for i := 1 to n do
	begin
		tmp := '';
		for j := 1 to n-i do
			tmp += ' ';
		for j := n-i+1 to n do
			tmp += '*';
		writeln(tmp);
	end;
end.