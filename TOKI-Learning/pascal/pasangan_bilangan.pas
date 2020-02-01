var
  angka,angkatmp : array [1..8000] of longint;
  n, t, i, j, tmp : longint;
  dapat : boolean;

function binarySearch(kiri, kanan, cari : longint):boolean;
var
  tengah : longint;
begin
  if kanan < kiri then
    binarySearch := false
  else
  begin
     tengah := (kanan+kiri) div 2;
     if angka[tengah] = cari then
       binarySearch := true
     else
     begin
       if angka[tengah] > cari then
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
    if angka[pkiri] <= angka[pkanan] then
    begin
      angkatmp[size] := angka[pkiri];
      inc(pkiri);
    end else
    begin
      angkatmp[size] := angka[pkanan];
      inc(pkanan);
    end;
  end;
  
  while pkiri <= tengah do
  begin
    inc(size);
    angkatmp[size] := angka[pkiri];
    inc(pkiri);
  end;
  
  while pkanan <= kanan do
  begin
    inc(size);
    angkatmp[size] := angka[pkanan];
    inc(pkanan);
  end;
  
  for j := 1 to size do
    angka[kiri+j-1] := angkatmp[j];
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
  readln(n, t);
  for i := 1 to n do
    readln(angka[i]);
  marge_sort(1,n);
  for i := 1 to t do
  begin
    readln(tmp);
    dapat := false;
    for j := 1 to n do
      if binarySearch(j+1,n,tmp-angka[j]) then
      begin
        dapat := true;
        break;
      end;
    
    if dapat then
      writeln('YA')
    else
      writeln('TIDAK');
  end;
end.