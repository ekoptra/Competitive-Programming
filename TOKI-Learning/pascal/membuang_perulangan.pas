type
  urut = record
    index, nilai: longint;
  end;

var
  angka : array [1..100000] of longint;
  sort, sorttmp : array [1..100000] of urut;
  tulis : array [1..100000] of boolean;
  n, i, j : longint;

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
    if sort[pkiri].nilai <= sort[pkanan].nilai then
    begin
      sorttmp[size] := sort[pkiri];
      inc(pkiri);
    end else
    begin
      sorttmp[size] := sort[pkanan];
      inc(pkanan);
    end;
  end;
  
  while pkiri <= tengah1 do
  begin
    inc(size);
    sorttmp[size] := sort[pkiri];
    inc(pkiri);
  end;
  
  while pkanan <= kanan do
  begin
    inc(size);
    sorttmp[size] := sort[pkanan];
    inc(pkanan);
  end;
  
  for j := 1 to size do
    sort[kiri+j-1] := sorttmp[j];
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
  readln(n);
  for i := 1 to n do
  begin
    readln(angka[i]);
    sort[i].index := i;
    sort[i].nilai := angka[i];
    tulis[i] := false;
  end;
  
  marge_sort(1,n);
  
  j := 1;
  tulis[sort[j].index] := true;
  for i := 2 to n do
    if sort[i].nilai <> sort[j].nilai then
    begin
      j := i;
      tulis[sort[j].index] := true;
    end;
  
  for i := 1 to n do
    if tulis[i] then
      writeln(angka[i]);
    
end.