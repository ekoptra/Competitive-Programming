var
	isi : array [1..128,1..128] of byte;
	pangkat2 : array [1..7] of byte = (2,4,8,16,32,64,128);
	r, c, pow, i, j, njawaban, k : integer;
	jawaban : array [1..128*128] of string;
	
function ubah(x:integer):integer;
begin
	for k := 1 to 7 do
	begin
		if pangkat2[k] >= x then
		begin
			ubah := pangkat2[k];
			exit;
		end;
	end;
end;

procedure kodekan(ir,ic,k : integer);
begin
	for i := ir to ir+k-1 do
		for j := ic to ic+k-1 do
			isi[i][j] := 1;
end;

procedure baca(ir, ic, k, posisi : integer; kode : string);
begin
	if posisi > length(kode) then
		kodekan(ir,ic,k)
	else if kode[posisi] = '0' then
		baca(ir,ic,k div 2, posisi + 1, kode)
	else if kode[posisi] = '1' then
		baca(ir, ic + (k div 2), k div 2, posisi + 1, kode)
	else if kode[posisi] = '2' then
		baca(ir + (k div 2), ic, k div 2, posisi + 1, kode)
	else
		baca(ir + (k div 2), ic + (k div 2), k div 2, posisi + 1, kode);
end;

begin
	readln(njawaban);
	for k := 1 to njawaban do
		readln(jawaban[k]);
	readln(r,c);
	if r > c then
		pow := ubah(r)
	else
		pow := ubah(c);
	for k := 1 to njawaban do
		baca(1,1,pow,2,jawaban[k]);
	for i := 1 to r do
	begin
		for j := 1 to c-1 do
			write(isi[i][j], ' ');
		writeln(isi[i][c]);
	end;
end.
