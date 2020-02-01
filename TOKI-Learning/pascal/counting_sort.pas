var
  data : array [0..1000] of longint;
  tmp, i, n : longint;

begin
  readln(n);
  for i := 1 to n do
  begin
    readln(tmp);
    inc(data[tmp]);
  end;
  
  for i := 0 to 1000 do
  begin
    while data[i] <> 0 do
    begin
      writeln(i);
      dec(data[i]);
    end;
  end;
end.