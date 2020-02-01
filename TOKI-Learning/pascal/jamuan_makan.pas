type
  waktu = record
    awal, akhir : longint;
  end;

var
  tamu, tamutmp : array [1..100000] of waktu;
  n, d, i, waktuMulai, max, k : longint;

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
    if tamu[pkiri].akhir > tamu[pkanan].akhir then
    begin
      tamutmp[size] := tamu[pkanan];
      inc(pkanan);
    end else
    begin
      tamutmp[size] := tamu[pkiri];
      inc(pkiri);
    end;
  end;
  while pkiri <= tengah do
  begin
    inc(size);
    tamutmp[size] := tamu[pkiri];
    inc(pkiri);
  end;
  while pkanan <= kanan do
  begin
    inc(size);
    tamutmp[size] := tamu[pkanan];
    inc(pkanan);
  end;
  
  for k := 1 to size do
    tamu[kiri+k-1] := tamutmp[k];
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
  readln(n);
  for i := 1 to n do
  begin
    readln(tamu[i].awal, d);
    tamu[i].akhir := tamu[i].awal + d -1;
  end;
  mergeSort(1,n);
  waktuMulai := 0;
  max := 0;
  for i := 1 to n do
    if waktuMulai < tamu[i].awal then
    begin
      inc(max);
      waktuMulai := tamu[i].akhir;
    end;
  writeln(max);
end.