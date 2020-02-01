var
  v1, v2 : array [1..10000] of int64;
  n, i, j, tmp, hasil : int64;

begin
  readln(n);
  for i := 1 to n do
  begin
    read(v1[i]);
    j := i;
    while j > 1 do
      if v1[j] < v1[j-1] then
      begin
        tmp := v1[j];
        v1[j] := v1[j-1];
        v1[j-1] := tmp;
        dec(j);
      end else
        break;
  end;
  readln;
  for i := 1 to n do
  begin
    read(v2[i]);
    j := i;
    while j > 1 do
      if v2[j] > v2[j-1] then
      begin
        tmp := v2[j];
        v2[j] := v2[j-1];
        v2[j-1] := tmp;
        dec(j);
      end else
        break;
  end;
  readln;
  hasil := 0;
  for i := 1 to n do
    hasil += v1[i]*v2[i];
  writeln(hasil);
end.