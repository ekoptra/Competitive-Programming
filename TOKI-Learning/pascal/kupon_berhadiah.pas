var
  n, i, x, jarak, pemenang, tmp : longint;

begin
  readln(n, x);
  pemenang := 200000000;
  jarak := 200000000;
  for i := 1 to n do 
  begin
    read(tmp);
    if jarak = abs(tmp - x) then
    begin
      if tmp < pemenang then
        pemenang := tmp;
    end
    else if jarak > abs(tmp-x) then
    begin
      jarak := abs(tmp-x);
      pemenang := tmp
    end;
  end;
  readln;
  writeln(pemenang);
end.