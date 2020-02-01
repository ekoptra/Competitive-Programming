var
	s : string;
	i, k : byte;
	
function enkripsi(a : char; k : byte):char;
begin
	if ord(a) + k > ord('z') then
		enkripsi := chr(ord(a) + k - 26)
	else
		enkripsi := chr(ord(a) + k);
end;

begin
	readln(s);
	readln(k);
	for i := 1 to length(s) do
		s[i] := enkripsi(s[i],k);
	writeln(s);
end.