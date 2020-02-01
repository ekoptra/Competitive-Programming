var
	n : real;
begin
	readln(n);
	if n < 0 then
		writeln(trunc(n)-1,' ',trunc(n))
	else
		writeln(trunc(n),' ',trunc(n)+1);
end.