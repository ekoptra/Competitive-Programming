var
  a, b : AnsiString;
  i,j,k: integer;
  
begin
  readln(a);
  readln(b);
  if length(a) - 1 <> length(b) then
    writeln('Wah, tidak bisa :(')
  else
  begin
    i := 1;
    k := 0;
    j := 1;
    while j <= length(b) do
    begin
      if a[i] <> b[j] then
        inc(k)
      else
        inc(j);
       
      if k = 2 then
      begin
        writeln('Wah, tidak bisa :(');
        exit;
      end;
      
      inc(i);
    end;
    writeln('Tentu saja bisa!');
  end;
end.