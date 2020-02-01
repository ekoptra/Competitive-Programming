type
  tipe = record
    w, c : integer;
    per : real;
  end;

var
  beras, berastmp : array [1..1000] of tipe;
  n, x, i, jumlah : longint;
  bayar : real;

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
    if beras[l].per < beras[m].per then
    begin
      berastmp[jml] := beras[l];
      inc(l);
    end else
    begin
      berastmp[jml] := beras[m];
      inc(m);
    end;
  end; 
   
  while l <= tengah1 do
  begin
    inc(jml);
    berastmp[jml] := beras[l];
    inc(l); 
  end;
  
  while m <= kanan do
  begin
    inc(jml);
    berastmp[jml] := beras[m];
    inc(m); 
  end;
  
  for l := 1 to jml do
    beras[kiri+l-1] := berastmp[l];
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
  readln(n,x);
  for i := 1 to n do
    read(beras[i].w);
  readln;
  for i := 1 to n do
    read(beras[i].c);
  readln;
  for i := 1 to n do
    beras[i].per := beras[i].c / beras[i].w;
  marge_sort(1,n);
  i := n;
  jumlah := 0;
  bayar := 0;
  while i > 0 do
  begin
    if jumlah + beras[i].w <= x then
    begin
      jumlah += beras[i].w;
      bayar += beras[i].c;
    end else
    begin
      while jumlah < x do
      begin
       inc(jumlah);
       bayar += beras[i].per;
      end;
    end;
    dec(i);
  end;
  
  writeln(bayar:0:5);
end.