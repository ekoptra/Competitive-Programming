type
	faktor = record
		x, y : byte;
	end;
var
	murid : array [1..1000] of faktor;
	max, min,jarak, tmp: longint;
	n, d, i, j, k : byte;

function pangkat(l : longint):longint;
begin
	tmp := 1;
	for k := 1 to d do
		tmp := tmp*l;
	pangkat := tmp;
end;

procedure cek(p : byte);
begin
	for j := 1 to p-1 do
	begin
		jarak := pangkat(abs(murid[p].x - murid[j].x)) + pangkat(abs(murid[p].y - murid[j].y));
		if jarak > max then
			max := jarak;
		if jarak < min then
			min := jarak;
	end;
end;

begin
	readln(n, d);
	max := 0;
	min := 2000000000;
	for i := 1 to n do
	begin
		readln(murid[i].x, murid[i].y);
		cek(i);
	end;
	writeln(min, ' ', max);
end.