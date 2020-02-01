var
  tinggi, tinggitmp : array [1..20000] of longint;
  n, b, i, k, tmp, min: longint;

procedure merge(kiri,tengah,tengah2,kanan : longint);
var
  pkiri, pkanan, size : longint;
begin
  size := 0;
  pkiri := kiri;
  pkanan := tengah2;
  while (pkiri <= tengah) and (pkanan <= kanan) do
  begin
    inc(size);
    if tinggi[pkiri] < tinggi[pkanan] then
    begin
      tinggitmp[size] := tinggi[pkanan];
      inc(pkanan);
    end else
    begin
      tinggitmp[size] := tinggi[pkiri];
      inc(pkiri);
    end;
  end;
  while pkiri <= tengah do
  begin
    inc(size);
    tinggitmp[size] := tinggi[pkiri];
    inc(pkiri);
  end;
  while pkanan <= kanan do
  begin
    inc(size);
    tinggitmp[size] := tinggi[pkanan];
    inc(pkanan);
  end;
  
  for k := 1 to size do
    tinggi[kiri+k-1] := tinggitmp[k];
end;

procedure mergeSort(kiri, kanan :longint);
var
  tengah : longint;
begin
  if kiri < kanan then
  begin
    tengah := (kiri+kanan) div 2;
    mergeSort(kiri,tengah);
    mergeSort(tengah+1,kanan);
    merge(kiri,tengah,tengah+1,kanan);
  end;
end;

begin
  readln(n, b);
  for i := 1 to n do
    readln(tinggi[i]);
  mergeSort(1,n);
  tmp := 0;
  min := 0;
  for i := 1 to n do 
  begin
    tmp += tinggi[i];
    inc(min);
    if tmp >= b then
      break;
  end;
  writeln(min);
end.