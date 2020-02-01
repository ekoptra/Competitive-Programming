var
  visit : array [1..100,1..100] of boolean;
  daerah : array [1..100,1..100] of longint;
  n,m,a,b, i,j: longint;

function min(r,s,t,u : longint):longint;
var
  kecil : longint;
begin  
  if r > s then
    kecil := s
  else
    kecil := r;  
  if kecil > t then
    kecil := t;
  if kecil > u then
    kecil := u;
  min := kecil;
end;
  
function minimal(l,k : longint):longint;
var
  kanan, kiri, atas, bawah,buntu : longint;
begin
  if ((l > n) or (k > m) or (l < 1) or ( k < 1)) then
    minimal := 0
  else if (daerah[l][k] = -1) then
    minimal := 20000
  else if (visit[l][k]) then
    minimal := 20000
  else
  begin
    visit[l][k] := true;
    kanan := minimal(l,k+1)+1;
    kiri := minimal(l,k-1)+1;
    atas := minimal(l-1,k)+1;
    bawah := minimal(l+1,k)+1;
    buntu := 0;
    if kanan > 20000 then
      inc(buntu);
    if kiri > 20000 then
      inc(buntu);
    if atas > 20000 then
      inc(buntu);
    if bawah > 20000 then
      inc(buntu);
    
    if buntu <= 3 then
       visit[l][k] := false;  
    minimal := min(kanan,atas,bawah,kiri);
  end;
end;

begin
  read(n, m);
  for i := 1 to n do
  begin
    for j := 1 to m-1 do
      read(daerah[i][j]);
    readln(daerah[i][m]);
  end;
  read(a,b);
  writeln(minimal(a,b));
end.
