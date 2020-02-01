var
  daerah : array [0..24,0..24] of byte;
  visit : array [0..24,0..24] of boolean;
  titik : array [0..24,0..24] of char;
  m, n, i, j, b1, k1 : byte;
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


procedure runtuhkan(b, k, warna : byte);
begin
  if (b > m) or (k > n) or (b < 0) or (k < 0) then
    exit
  else if visit[b][k] then
    exit
  else if daerah[b][k] <> warna then
    exit
  else
  begin
    visit[b][k] := true;
    titik[b][k] := '.';
    runtuhkan(b-1,k,warna);
    runtuhkan(b+1,k,warna);
    runtuhkan(b,k+1,warna);
    runtuhkan(b,k-1,warna);
  end;
end;

function nilai(n: longint):longint;
begin
  nilai := n*(n-1);
end;

procedure print;
begin
   for i := 0 to m do
  begin
    for j := 0 to n-1 do
    begin
      if titik[i][j] = '.' then
        write(titik[i][j],' ')
      else
        write(daerah[i][j], ' ');
    end;
    if titik[i][n] = '.' then
        writeln(titik[i][n])
     else
       writeln(daerah[i][n]);
  end;
end;

procedure turun(b, k : byte);
var
  tmp2 : char;
  tmp3 : byte;
begin
  if (titik[b][k] = '.') then
  begin
    while b > 0 do
    begin
      tmp2 := titik[b][k];
      titik[b][k] := titik[b-1][k];
      titik[b-1][k] := tmp2;
      tmp3 := daerah[b][k];
      daerah[b][k] := daerah[b-1][k];
      daerah[b-1][k] := tmp3;
      dec(b);
    end;
  end;
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
  
  max := 0;
  b1 := 0;
  k1 := 0;
  for i := 0 to m do
    for j := 0 to n do
    begin
      tmp := nilai(hitung(i,j,daerah[i][j]));
      if tmp > max then
      begin
        max := tmp;
        b1 := i;
        k1 := j;
      end;
    end;
  
  for i := 0 to m do
    for j := 0 to n do
      visit[i][j] := false;
  
  runtuhkan(b1,k1,daerah[b1][k1]);
 
  for i := 0 to m do
    for j := 0 to n do
      turun(i,j);
  
   print;
end.