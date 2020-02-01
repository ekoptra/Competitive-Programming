var
  terbesar, terkecil, total, total2, tmp, rata, variasi : real;
  n, i : integer;
begin
  readln(n);
  total := 0;
  total2 := 0;
  for i := 1 to n do
  begin
    readln(tmp);
    if i = 1 then
    begin
      terkecil := tmp;
      terbesar := tmp;
    end else
    begin
       if terbesar < tmp then
          terbesar := tmp;
       if terkecil > tmp then
          terkecil := tmp;
    end;
    total := total + tmp;
    total2 := total2 + sqr(tmp);
  end;
  
  rata := total/n;
  if n = 1 then
    variasi := 0
  else
    variasi := (total2 - (n*sqr(rata)))/(n-1);
    
  writeln(terkecil:0:2, ' ', terbesar:0:2, ' ', rata:0:2, ' ', sqrt(variasi):0:2);
  
end.