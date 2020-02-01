var
	t, n, i: longint;
	total, kelipatan4, kelipatan7, kelipatan28 : int64;
begin
	readln(t);
	for i := 1 to t do
	begin
		readln(n);
		kelipatan7 := ((n div 7)*(14+(((n div 7)-1)*7))) div 2;
		kelipatan4 := ((n div 4)*(8+(((n div 4)-1)*4))) div 2;
		kelipatan28 := ((n div 28)*(56+(((n div 28)-1)*28))) div 2;
		writeln(kelipatan4 + kelipatan7 - kelipatan28);
	end;
end.