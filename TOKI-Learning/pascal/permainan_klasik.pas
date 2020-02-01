var
  t,i : byte;
  n : int64;

begin
  readln(t);
  for i := 1 to t do
  begin
    readln(n);
    if n mod 6 = 0 then
      writeln('TIDAK')
    else
      writeln('YA');
  end;
end.