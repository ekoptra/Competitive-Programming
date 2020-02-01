var
  k, n, i : integer;
  mataUang : array [1..10] of integer = (1000,500,200,100,50,20,10,5,2,1);
begin
  readln(k);
  i := 1;
  while k <> 0 do
  begin
    n := 0;
    while (k div mataUang[i] <> 0) do
    begin
      n := n + (k div mataUang[i]);
      k := k - (n*mataUang[i]);
    end;
    if (n <> 0) then
      writeln(mataUang[i],' ',n);
    inc(i);
  end;
end.