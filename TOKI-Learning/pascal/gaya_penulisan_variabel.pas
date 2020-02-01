var
	i : integer;
	s : string;
	
function toCamelCase(a :string):string;
begin
	i := 1;
	while i <= length(a) do
	begin
		if a[i] = '_' then
		begin
			delete(a,i,1);
			a[i] := upcase(a[i]);
		end;
		inc(i);
	end;
	toCamelCase := a;
end;

function to_snake_case(a: string):string;
begin
	i := 1;
	while i <= length(a) do
	begin
		if ord(a[i]) <= ord('Z') then
		begin
			insert('_',a,i);
			a[i+1] := lowercase(a[i+1]);
		end;
		inc(i);
	end;
	to_snake_case := a;
end;

begin
	readln(s);
	if pos('_',s) <> 0 then
		writeln(toCamelCase(s))
	else
		writeln(to_snake_case(s));
end.