type
  hewan = record
    bawah, atas : longint;
  end;

var
  jenis : array [1..100000] of hewan;
  n, q, i, tmp, tengah: longint;

function cari(kiri,kanan,c : longint):longint;
begin
  tengah := (kiri+kanan) div 2;
  if (jenis[tengah].bawah <= c) and (jenis[tengah].atas >= c) then
    cari := tengah
  else if jenis[tengah].bawah > c then
    cari := cari(kiri,tengah-1,c)
  else
    cari := cari(tengah+1,kanan,c);
end;

begin
  readln(n);
  tmp := 0;
  for i := 1 to n do
  begin
    jenis[i].bawah := tmp+1;
    readln(tmp);
    tmp += jenis[i].bawah - 1;
    jenis[i].atas := tmp;
  end;
  readln(q);
  for i := 1 to q do
  begin
    readln(tmp);
    writeln(cari(1,n,tmp));
  end;
end.