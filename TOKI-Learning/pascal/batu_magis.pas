var
  power, powertmp : array [1..100000] of longint;
  n, i, jumlah, tmp, j: longint;

procedure marge(kiri, tengah1, tengah2, kanan : longint);
var
  jml, l, m : longint;
begin
  l := kiri;
  m := tengah2;
  jml := 0;
  while (l <= tengah1) and (m <= kanan) do
  begin
    inc(jml);
    if power[l] < power[m] then
    begin
      powertmp[jml] := power[l];
      inc(l);
    end else
    begin
      powertmp[jml] := power[m];
      inc(m);
    end;
  end; 
   
  while l <= tengah1 do
  begin
    inc(jml);
    powertmp[jml] := power[l];
    inc(l); 
  end;
  
  while m <= kanan do
  begin
    inc(jml);
    powertmp[jml] := power[m];
    inc(m); 
  end;
  
  for l := 1 to jml do
    power[kiri+l-1] := powertmp[l];
end;

procedure marge_sort(kiri, kanan : longint);
var
  tengah : longint;
begin
  if kiri < kanan then
  begin
    tengah := (kiri+kanan) div 2;
    marge_sort(kiri,tengah);
    marge_sort(tengah+1,kanan);
    marge(kiri,tengah,tengah+1,kanan);
  end;
end;

begin
  readln(n);
  for i := 1 to n do
    read(power[i]);
  readln;
  marge_sort(1,n);
  j := n;
  jumlah := 0;
  i := 0;
  
  while i < n do
  begin
    i += power[j] + 1;
    dec(j);
    inc(jumlah);
  end;
  
  writeln(jumlah);
end.