var
	x : real;
begin
	readln(x);
	if x = trunc(x) then
		writeln(trunc(x), ' ', trunc(x))
	else if x < 0 then
		writeln(trunc(x)-1,' ',trunc(x))
	else
		writeln(trunc(x),' ',trunc(x)+1);
end.