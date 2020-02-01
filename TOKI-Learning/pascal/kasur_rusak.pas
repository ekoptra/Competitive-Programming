function polidrom(a : string):boolean;
begin
	if length(a) = 0 then
		polidrom := true
	else if a[1] = a[length(a)] then
	begin
		delete(a,1,1);
		delete(a,length(a),1);
		polidrom := polidrom(a);
	end
	else
		polidrom := false;
end;
var 
	a : string;
begin
	readln(a);
	if(polidrom(a)) then
		writeln('YA')
	else
		writeln('BUKAN');
end.