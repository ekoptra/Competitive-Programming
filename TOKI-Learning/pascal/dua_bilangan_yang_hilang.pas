var
  tidakHilang : array [1..100000] of boolean;
  n,i, tmp : longint;

begin
  readln(n);
  for i := 1 to n-2 do
  begin
    readln(tmp);
    tidakHilang[tmp] := true;
  end;
  for i := 1 to n do
    if not tidakHilang[i] then
      writeln(i);
end.