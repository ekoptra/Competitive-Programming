var
	a, b : string;

begin
	readln(b);
	a := copy(b,1,pos(' ', b)-1);
	delete(b,1,pos(' ',b));
	while pos(b,a) <> 0 do
		delete(a,pos(b,a),length(b));
	writeln(a);
end.