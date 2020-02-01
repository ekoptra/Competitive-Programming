var 
  data, datatmp : array [1..100000] of longint;
  n, i, q, l, r: longint;

function cekAtas(x : longint):longint;
begin
  if x = n then
    cekAtas := n
  else if data[x] <> data[x+1] then
    cekAtas := x
  else
    cekAtas := cekAtas(x+1);
end;

function cekBawah(x:longint):longint;
begin
  if x = 1 then
    cekBawah := 1
  else if data[x] <> data[x-1] then
    cekBawah := x
  else
    cekBawah := cekBawah(x-1);
end;
  
function batasBawahAtas(kiri, kanan, cari : longint; atas : boolean):longint;
var
  tengah : longint;
begin
  if kanan < kiri then
  begin
    if atas then
      batasBawahAtas := kanan
    else
      batasBawahAtas := kiri;
  end else
  begin
    tengah := (kiri+kanan) div 2;
    if data[tengah] = cari then
    begin
      if atas then
        batasBawahAtas := cekAtas(tengah)
      else
        batasBawahAtas := cekBawah(tengah);
    end
    else if data[tengah] < cari then
      batasBawahAtas := batasBawahAtas(tengah+1, kanan,cari, atas)
    else
      batasBawahAtas := batasBawahAtas(kiri,tengah-1,cari,atas);
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
    if data[pkiri] <= data[pkanan] then
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
    readln(data[i]);
  marge_sort(1,n);
  readln(q);
  for i := 1 to q do
  begin
    readln(l, r);
    writeln(batasBawahAtas(1,n,r,true) - 
      batasBawahAtas(1,n,l,false)+1);
  end;
end.