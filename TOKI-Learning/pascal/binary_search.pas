type
  angka = record
    idx, nilai : longint;
  end;

var
  data, datatmp : array [1..100000] of angka;
  n, q, p, i : longint;
  
function cek(x : longint):longint;
begin
  if x = 1 then
    cek := data[1].idx
  else if data[x].nilai <> data[x-1].nilai then
    cek := data[x].idx
  else
    cek := cek(x-1);
end;

function binarySearch(kiri, kanan, cari : longint):longint;
var
  tengah : longint;
begin
  if kanan < kiri then
    binarySearch := -1
  else
  begin
     tengah := (kanan+kiri) div 2;
     if data[tengah].nilai = cari then
       binarySearch := cek(tengah) - 1
     else
     begin
       if data[tengah].nilai > cari then
         kanan := tengah -1
       else
         kiri := tengah + 1;
       binarySearch := binarySearch(kiri,kanan,cari);
     end;
  end;
end;

procedure marge(kiri, tengah, tengah2, kanan : longint);
var
  pkiri, pkanan, size, j : longint;
begin
  pkiri := kiri;
  pkanan := tengah2;
  size := 0;
  
  while (pkiri <= tengah) and (pkanan <= kanan) do
  begin
    inc(size);
    if data[pkiri].nilai <= data[pkanan].nilai then
    begin
      datatmp[size] := data[pkiri];
      inc(pkiri);
    end else
    begin
      datatmp[size] := data[pkanan];
      inc(pkanan);
    end;
  end;
  
  while pkiri <= tengah do
  begin
    inc(size);
    datatmp[size] := data[pkiri];
    inc(pkiri);
  end;
  
  while pkanan <= kanan do
  begin
    inc(size);
    datatmp[size] := data[pkanan];
    inc(pkanan);
  end;
  
  for j := 1 to size do
    data[kiri+j-1] := datatmp[j];
end;

procedure marge_sort(kiri,kanan : longint);
var
  tengah : longint;
begin
  if kiri < kanan then
  begin
    tengah := (kanan + kiri) div 2;
    marge_sort(kiri, tengah);
    marge_sort(tengah+1,kanan);
    marge(kiri,tengah,tengah+1,kanan);
  end;
end;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(data[i].nilai);
    data[i].idx := i;
  end;
  marge_sort(1,n);
  readln(q);
  for i := 1 to q do
  begin
    readln(p);
    writeln(binarySearch(1,n,p));
  end;
end.