function fungsi_2(a,b,k : shortint; x :integer):integer;
begin
	if ( k = 1) then
		fungsi_2 := abs(a*x+b)
	else
	begin
		x := abs((a*x)+b);
		fungsi_2 := fungsi_2(a,b,k-1,x);
	end;
end;
var
	a,b,k,x : shortint;
begin
	read(a,b,k,x);
	writeln(fungsi_2(a,b,k,x));
end.