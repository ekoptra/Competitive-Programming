var
  n,m, k, i, j, nilai: longint;
  petak : array [1..100,1..100] of longint;

function tetangga(x, y :longint):longint;
begin
  if (x > n) or (x < 1) or (y > m) or (y < 1) then
    tetangga := 1
  else
    tetangga := petak[x][y];
end;

begin
  readln(n,m,k);
  for i := 1 to n do
  begin
    for j := 1 to m do
      read(petak[i][j]);
    readln;
  end;
  for j := 1 to m do
    for i := 1 to n do
    begin
      nilai := tetangga(i,j-1)*tetangga(i,j+1)*
               tetangga(i-1,j)*tetangga(i+1,j);
      if nilai = k then
      begin
        writeln(i, ' ', j);
        exit;
      end;
    end;
  writeln('0 0');
end.