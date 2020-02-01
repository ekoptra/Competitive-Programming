var
  kata : array [1..1000] of string;
  tmp : string;
  n, i, j : integer;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(kata[i]);
    j := i;
    while j > 1 do
      if kata[j] < kata[j-1] then
      begin
        tmp := kata[j];
        kata[j] := kata[j-1];
        kata[j-1] := tmp;
        dec(j);
      end else
        break;
    writeln(j);
  end;
end.