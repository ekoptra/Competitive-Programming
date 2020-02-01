var
  data : array [1..1000] of longint;
  n,i,j, tmp : longint;

begin
  readln(n);
  for i := 1 to n do
    readln(data[i]);
  for i := 1 to n-1 do
    for j := 1 to n-i  do
      if data[j] > data[j+1] then
      begin
        tmp := data[j];
        data[j] := data[j+1];
        data[j+1] := tmp;
      end;
      
   for i := 1 to n do
     writeln(data[i]);
end.