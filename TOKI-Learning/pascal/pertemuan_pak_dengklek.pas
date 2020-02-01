var
  kata : array [1..500] of string;
  tmp : string;
  n, i, j : integer;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(kata[i]);
    j := i;
    while j > 1 do
      if length(kata[j-1]) > Length(kata[j]) then
      begin
        tmp := kata[j-1];
        kata[j-1] := kata[j];
        kata[j] := tmp;
        dec(j);
      end else
        break;
    
    while (j > 1) do
      if (kata[j-1] > kata[j]) and
        (length(kata[j-1]) = length(kata[j])) then
      begin
        tmp := kata[j-1];
        kata[j-1] := kata[j];
        kata[j] := tmp;
        dec(j);
      end else
        break;
  end;
  
  for i := 1 to n do
    writeln(kata[i]);
end.