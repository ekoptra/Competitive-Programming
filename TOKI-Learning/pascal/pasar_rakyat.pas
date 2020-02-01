var
  data : array [1..17*10] of longint;
  jumlah, i, j, n, tmp, nfaktor: longint;

begin
  readln(n);
  nfaktor := 0;
  for i := 1 to n do
  begin
    readln(tmp);
    for j := 1 to nfaktor do
      if tmp mod data[j] = 0 then
        tmp := tmp div data[j];
        
    for j := 2 to trunc(sqrt(tmp)) do
      while tmp mod j = 0 do 
      begin
        inc(nfaktor);
        data[nfaktor] := j;
        tmp := tmp div j;
      end;
      
    if tmp <> 1 then
    begin
      inc(nfaktor);
      data[nfaktor] := tmp;
    end;
  end;
  
  jumlah := 1;
  for i := 1 to nfaktor do
    jumlah *= data[i];
  writeln(jumlah);
end.