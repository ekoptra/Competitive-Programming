function ganjil_genap(n : byte):longint;
begin
	if n = 1 then
		ganjil_genap := 1
	else if(n mod 2 = 1) then 
		ganjil_genap := n * ganjil_genap(n-1)
	else
		ganjil_genap := (n div 2)* ganjil_genap(n-1);
end;
var
	n : byte;
begin
	readln(n);
	writeln(ganjil_genap(n));
end.