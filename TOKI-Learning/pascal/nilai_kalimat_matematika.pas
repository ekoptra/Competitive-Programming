var
	a, b : integer;
	op, sp : char;
begin
	readln(a,sp,op,sp,b);
	
	case op of
	'+' : writeln(a+b);
	'-' : writeln(a-b);
	'*' : writeln(a*b);
	'=' : if (a=b) then
			writeln('benar')
		  else
			writeln('salah');
	'<' : if (a<b) then
			writeln('benar')
		  else
			writeln('salah');
	'>' : if (a>b) then
			writeln('benar')
		  else
			writeln('salah');
	end;
end.