var
	n : byte;
	
procedure cetak(x : byte);
var
	i : byte;
begin
	for i := 1 to x do
		write('*');
	writeln;
end;

procedure gambar(x : byte);
begin
	if x = 1 then
		cetak(1)
	else
	begin
		gambar(x-1);
		cetak(x);
		gambar(x-1);
	end;
end;

begin
	readln(n);
	gambar(n);
end.