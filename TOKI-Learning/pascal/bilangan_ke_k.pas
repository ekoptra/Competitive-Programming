var
  data, datatmp : array [1..100000] of longint;
  n, i, k: longint;

procedure marge(kiri, tengah1, tengah2, kanan : longint);
var
  pkiri, pkanan, size, j: longint;
begin
  size := 0;
  pkiri := kiri;
  pkanan := tengah2;
  
  while (pkiri <= tengah1) and (pkanan <= kanan) do
  begin
    inc(size);
    if data[pkiri] >= data[pkanan] then
    begin
      datatmp[size] := data[pkiri];
      inc(pkiri);
    end else
    begin
      datatmp[size] := data[pkanan];
      inc(pkanan);
    end;
  end;
  
  while pkiri <= tengah1 do
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

procedure marge_sort(kiri, kanan : longint);
var
  tengah : longint;
begin
  if kiri < kanan then
  begin
    tengah := (kanan+kiri) div 2;
    marge_sort(kiri,tengah);
    marge_sort(tengah+1,kanan);
    marge(kiri,tengah,tengah+1,kanan);
  end;
end;

begin
  readln(n,k);
  for i := 1 to n do
    readln(data[i]);
  marge_sort(1,n);
  writeln(data[k]);
end.