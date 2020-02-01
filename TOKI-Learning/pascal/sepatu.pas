var
  ukuranKaki : array [0..10001] of integer;
  ukuranSepatu : array [1..1000 ] of integer;
  n, m, i, jml, j, min, tmp : integer;

procedure urutkan;
begin
  for i := 1 to m-1 do
  begin
    min := i;
    for j := i+1 to m do
      if ukuranSepatu[j] < ukuranSepatu[min] then
        min := j;
    
    tmp := ukuranSepatu[min];
    ukuranSepatu[min] := ukuranSepatu[i];
    ukuranSepatu[i] := tmp;
  end;
end;

begin
  readln(n, m);
  for i := 1 to n do
  begin
    readln(tmp);
    inc(ukuranKaki[tmp]);
  end;
  for i := 1 to m do
    readln(ukuranSepatu[i]);
  urutkan;
  jml := 0;
  for i := 1 to m do
    if ukuranKaki[ukuranSepatu[i]-1] <> 0 then
    begin
      inc(jml);
      dec(ukuranKaki[ukuranSepatu[i]-1]);
    end else
    if ukuranKaki[ukuranSepatu[i]] <> 0 then
    begin
      inc(jml);
      dec(ukuranKaki[ukuranSepatu[i]]);
    end;
  writeln(jml);
end.