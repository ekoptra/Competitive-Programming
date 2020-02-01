var
  hadiah : array [1..100000] of longint;
  depan, belakang, n,m, i, j : longint;
  jumlah, max : int64;
begin
  read(n,m);
  depan := 1;
  belakang := 0;
  jumlah := 0;
  for i := 1 to m do
  begin
    inc(belakang);
    read(hadiah[belakang]);
    jumlah := jumlah + hadiah[belakang];
  end;
  max := jumlah;
  for j := i+1 to n-1 do
  begin
    inc(belakang);
    read(hadiah[belakang]);
    jumlah := jumlah + hadiah[belakang] - hadiah[depan];
    if jumlah > max then
      max := jumlah;
    inc(depan);
  end;
  inc(belakang);
  readln(hadiah[belakang]);
  jumlah := jumlah + hadiah[belakang] - hadiah[depan];
  if jumlah > max then
     max := jumlah;
  writeln(max);
end.