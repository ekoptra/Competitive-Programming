var
	a,b,c,d : longint;
	e,f, i, j, temp : int64;
begin
	readln(a, b);
	readln(c, d);
	
	e := b*d;
	f := (a*d + c*b);
	i := e;
	j := f;
	while (e <> 0) do
	begin
		f := f mod e;
		temp := e;
		e := f;
		f := temp;
	end;
	
	writeln(j div f,' ', i div f);
end.