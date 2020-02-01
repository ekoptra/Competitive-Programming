var
	isi : array [0..9] of byte;
	n, i,k  : byte;

procedure tulis;
begin
	for i := 1 to k-1 do
		write(isi[i],' ');
	writeln(isi[k]);
end;

procedure permutasi(kedalaman : byte);
var 
	j : byte;
begin
	if kedalaman > k then
		tulis
	else
		for  j := isi[kedalaman-1] + 1 to n do
		begin
			isi[kedalaman] := j;
			permutasi(kedalaman+1);
		end;
end;

begin
	readln(n, k);
	permutasi(1);
end.