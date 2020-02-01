var
  data : array [1..1000] of longint;
  n,i,j, min,tmp : longint;

begin
  readln(n);
  for i := 1 to n do
    readln(data[i]);
  for i := 1 to n-1 do
  begin
    min := i;
    for j := i+1 to n do
      if data[min] > data[j] then
        min := j;
        
    if min <> i then
    begin
      tmp := data[min];
      data[min] := data[i];
      data[i] := tmp;
    end;
  end;
      
   for i := 1 to n do
     writeln(data[i]);
end.