var
	pernah : array [1..9] of boolean;
	isi : array [1..9] of byte;
	n, i,k  : byte;

procedure tulis;
begin
	for i := 1 to k-1 do
		write(isi[i],' ');
	writeln(isi[k]);
end;

function cek:boolean;
begin
	for i := 1 to k-1 do
		if isi[i] > isi[i+1] then
		begin
			cek := false;
			exit;
		end;
	cek := true;
end;

procedure permutasi(kedalaman : byte);
var 
	j : byte;
begin
	if kedalaman > k then
	begin
		if cek then
			tulis;
	end else
		for  j := 1 to n do
			if not pernah[j] then
			begin
				pernah[j] := true;
				isi[kedalaman] := j;
				permutasi(kedalaman+1);
				pernah[j] := false;
			end;
end;

begin
	readln(n, k);
	permutasi(1);
end.