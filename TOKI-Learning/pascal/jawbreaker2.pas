var
  daerah : array [0..24,0..24] of byte;
  visit : array [0..24,0..24] of boolean;
  m, n, i, j : byte;
  max, tmp : longint;

function hitung(b, k, warna : byte):longint;
begin
  if (b > m) or (k > n) or (b < 0) or (k < 0) then
    hitung := 0
  else if visit[b][k] then
    hitung := 0
  else if daerah[b][k] <> warna then
    hitung := 0
  else
  begin
    visit[b][k] := true;
    hitung := hitung(b+1,k,warna) + hitung(b-1,k,warna) +
              hitung(b,k+1,warna) + hitung(b,k-1,warna) + 1;
  end;
end;

procedure isiFalse;
var 
  i, j : byte;
begin
  for i := 0 to m do
    for j := 0 to n do
      visit[i][j] := false;
end;

function nilai(n: longint):longint;
begin
  nilai := n*(n-1);
end;

begin
  read(m, n);
  dec(m);
  dec(n);
  for i := 0 to m do
  begin
    for j := 0 to n-1 do
      read(daerah[i][j]);
    readln(daerah[i][n]);
  end;
  
  isiFalse;
  max := 0;
  for i := 0 to m do
    for j := 0 to n do
    begin
      tmp := nilai(hitung(i,j,daerah[i][j]));
      if tmp > max then
        max := tmp;
    end;
    
 writeln(max);
  
end.