function faktorial(n: integer):longint;
var 
	i : integer;
	jumlah : longint;
begin
	jumlah := 1;
	
	for i := 1 to n do
		jumlah := jumlah*i;
	
	faktorial := jumlah;
end;

var 
	n : integer;
begin
	readln(n);
	if (n <0) or (n>10) then
		writeln('ditolak')
	else
		writeln(faktorial(n));
end.