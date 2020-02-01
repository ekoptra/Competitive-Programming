type
  kataku = record
    word2 : string;
    panjang : byte;
  end;
  
var
  kata, katatmp : array [1..10000] of kataku;
  n, i, j: integer;
  tmp : string;

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
    if kata[pkiri].word2 <= kata[pkanan].word2 then
    begin
      katatmp[size] := kata[pkiri];
      inc(pkiri);
    end else
    begin
      katatmp[size] := kata[pkanan];
      inc(pkanan);
    end;
  end;
  
  while pkiri <= tengah1 do
  begin
    inc(size);
    katatmp[size] := kata[pkiri];
    inc(pkiri);
  end;
  
  while pkanan <= kanan do
  begin
    inc(size);
    katatmp[size] := kata[pkanan];
    inc(pkanan);
  end;
  
  for j := 1 to size do
    kata[kiri+j-1] := katatmp[j];
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

procedure marge2(kiri, tengah1, tengah2, kanan : longint);
var
  pkiri, pkanan, size, j: longint;
begin
  size := 0;
  pkiri := kiri;
  pkanan := tengah2;
  
  while (pkiri <= tengah1) and (pkanan <= kanan) do
  begin
    inc(size);
    if kata[pkiri].panjang <= kata[pkanan].panjang then
    begin
      katatmp[size] := kata[pkiri];
      inc(pkiri);
    end else
    begin
      katatmp[size] := kata[pkanan];
      inc(pkanan);
    end;
  end;
  
  while pkiri <= tengah1 do
  begin
    inc(size);
    katatmp[size] := kata[pkiri];
    inc(pkiri);
  end;
  
  while pkanan <= kanan do
  begin
    inc(size);
    katatmp[size] := kata[pkanan];
    inc(pkanan);
  end;
  
  for j := 1 to size do
    kata[kiri+j-1] := katatmp[j];
end;

procedure marge_sort2(kiri, kanan : longint);
var
  tengah : longint;
begin
  if kiri < kanan then
  begin
    tengah := (kanan+kiri) div 2;
    marge_sort2(kiri,tengah);
    marge_sort2(tengah+1,kanan);
    marge2(kiri,tengah,tengah+1,kanan);
  end;
end;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(kata[i].word2);
    kata[i].panjang := length(kata[i].word2);
  end;
  
  marge_sort2(1,n);
  
  j := 1;
  for i := 1 to n do
    if kata[j].panjang <> kata[i].panjang then
    begin
      marge_sort(j,i-1);
      j := i;
    end;
  marge_sort(j,i);
  
  for i := 1 to n do
    writeln(kata[i].word2);
end.