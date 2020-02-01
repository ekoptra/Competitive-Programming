var
	isi : array [1..128,1..128] of byte;
	r, c, i, j : byte;
	pangkat2 : array [1..7] of byte = (2,4,8,16,32,64,128);
	njawaban, k : integer;
	jawaban : array [1..128*128] of string;
	
function ubah(x:byte):byte;
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

function homogen(ir,ic,k : byte):boolean;
begin
	for i := ir to ir+k-1 do
		for j := ic to ic+k-1 do
			if isi[ir][ic] <> isi[i][j] then
			begin
				homogen := false;
				exit;
			end;
	homogen := true;
end;

procedure kode(ir,ic,k : byte; s : string);
begin
	 if homogen(ir,ic,k) then
	 begin
		if isi[ir][ic] = 1 then
		begin
			inc(njawaban);
			jawaban[njawaban] := '1' + s;
		end;
	 end else
	 begin
		kode(ir,ic,k div 2,s + '0');
		kode(ir,ic + (k div 2), k div 2, s + '1');
		kode(ir + (k div 2), ic, k div 2, s + '2');
		kode(ir + (k div 2), ic + (k div 2), k div 2, s + '3');
	 end;
end;

begin
	readln(r,c);
	for i := 1 to r do
	begin
		for j := 1 to c do
			read(isi[i][j]);
		readln;
	end;
	if r > c then
	begin
		r := ubah(r);
		c := r;
	end else
	begin
		c := ubah(c);
		r := c;
	end;
	njawaban := 0;
	kode(1,1,r, '');
	writeln(njawaban);
	for k := 1 to njawaban do
		writeln(jawaban[k]);
end.
