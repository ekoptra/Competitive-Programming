var
	s : string;
	i : byte;
	
function rubah(a :char):char;
begin
	if ord(a) >= ord('a') then
		rubah := upcase(a)
	else
		rubah := lowercase(a);
end;

begin
	readln(s);
	for i := 1 to length(s) do
		s[i] := rubah(s[i]);
	writeln(s);
end.