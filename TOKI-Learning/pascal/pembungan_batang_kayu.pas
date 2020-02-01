var
  tinggi : array [1..50000] of integer;
  n, i, tertinggi, awal: longint;
  turun : boolean;
  
function puncak(x : longint):longint;
begin
  while x < n do
    if tinggi[x] >= tinggi[x+1] then
    begin
      tertinggi := x;
      break;
    end else
      inc(x);
    
    if x = n then
    begin
      awal := n + 1;
      puncak := n;
      exit;
    end;
    
    while x < n do
      if tinggi[x] > tinggi[x+1] then
        inc(x)
      else
      begin
        awal := x+1;
        break
      end;
    
    if x = n then
      awal := n+1;
      
    puncak := tertinggi;
    
end;

begin
  readln(n);
  for i := 1 to n do
    readln(tinggi[i]);
  
   awal := 1;
   while awal <= n do
     writeln(puncak(awal));
end.