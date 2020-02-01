var
	pernah : array [1..9] of boolean;
	isi : array [1..9] of byte;
	n, i : byte;

procedure tulis;
begin
	for i := 1 to n do
		write(isi[i]);
	writeln;
end;

function cek_zigzag:boolean;
var
	kondisi1, kondisi2 : boolean;
begin
	for i := 2 to n-1 do
	begin
		kondisi1 := (isi[i] < isi[i-1]) and (isi[i] < isi[i+1]);
		kondisi2 := (isi[i] > isi[i-1]) and (isi[i] > isi[i+1]);
		
		if not (kondisi1 or kondisi2) then
		begin
			cek_zigzag := false;
			exit;
		end;
	end;
	
	cek_zigzag := true;
end;

procedure permutasi(kedalaman : byte);
var 
	j : byte;
begin
	if kedalaman > n then
	begin
		if cek_zigzag then
			tulis
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
	readln(n);
	permutasi(1);
end.