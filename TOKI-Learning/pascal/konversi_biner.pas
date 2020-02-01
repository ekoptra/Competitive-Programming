function biner(k : cardinal):string;
var 
	a : string;
begin
	if (k mod 2 = 0) then 
		a:= '0'
	else 
		a:= '1';
		
	if k <= 1 then
		biner := a
	else
		biner := biner(k div 2) + a;
end;

var 
	k : cardinal;
begin
	readln(k);
	writeln(biner(k));
end.