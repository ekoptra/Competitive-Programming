var
  data : array [1..1000000] of longint;
  n, i, d : longint;
 
begin
  readln(n,d);
  for i := 1 to n do
    readln(data[i]);
  for i := 1 to n do
    if data[i] = d then
    begin
      writeln(i-1);
      exit;
    end;
  writeln(-1);
end.