var
  baju, bajutmp: array [1..100000] of byte;
  n, i, tengah : longint;
  
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
    if baju[l] < baju[m] then
    begin
      bajutmp[jml] := baju[l];
      inc(l);
    end else
    begin
      bajutmp[jml] := baju[m];
      inc(m);
    end;
  end; 
   
  while l <= tengah1 do
  begin
    inc(jml);
    bajutmp[jml] := baju[l];
    inc(l); 
  end;
  
  while m <= kanan do
  begin
    inc(jml);
    bajutmp[jml] := baju[m];
    inc(m); 
  end;
  
  for l := 1 to jml do
    baju[kiri+l-1] := bajutmp[l];
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
    readln(baju[i]);
  marge_sort(1,n);
  tengah := n div 2;
  if n mod 2 = 1 then
    writeln(baju[tengah+1],'.0')
  else
    writeln(((baju[tengah] + baju[tengah+1])/2):0:1);
end.