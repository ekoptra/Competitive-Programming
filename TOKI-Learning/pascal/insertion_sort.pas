var
  data : array [1..1000] of longint;
  n,i,j, min,tmp : longint;

begin
  readln(n);
  for i := 1 to n do
    readln(data[i]);
  for i := 1 to n do
  begin
    min := data[i];
    j := i;
    while j > 1 do     
      if min < data[j-1] then
      begin
        tmp := data[j];
        data[j] := data[j-1];
        data[j-1] := tmp;
        dec(j);
      end else
        break;
    data[j] := min;
  end;
      
   for i := 1 to n do
     writeln(data[i]);
end.