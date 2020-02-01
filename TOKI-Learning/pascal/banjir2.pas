var
  baris : array[1..80,1..80] of char;
  berair : array[1..80,1..80] of boolean;
  n, m, t, j, k : integer;
 
procedure baca;
var
  i,p : integer;
begin
  for i := 1 to n do
  begin
    for p := 1 to m-1 do
      read(baris[i][p]);
    readln(baris[i][m]);
  end;
end;

procedure infalse;
var
  i, j : integer;
begin
  for i := 1 to n do
    for j := 1 to m do 
      berair[i][j] := false;
end;

procedure terendam(l,p: integer);
begin
  if (l <= n) and (p <= m) and (l >= 1) and (p >= 1) then
  begin
    if (berair[l][p]) or (baris[l][p] = '#') then
      exit;
      
    berair[l][p] := true;
    terendam(l,p-1);
    terendam(l,p+1);
    terendam(l-1,p);
    terendam(l+1,p);
  end;
end;

procedure tulis;
var
  i, j : integer;
begin
  for i := 1 to n do
    for j := 1 to m do
      if (baris[i][j] = ' ') and (not berair[i][j]) then
      begin
        writeln('YA');
        exit;
      end;
      
   writeln('TIDAK');
end;

begin
  readln(t);
  for j := 1 to t do
  begin
    read(n,m);
    baca;
    infalse;
    for k := 1 to n do
    begin
      terendam(k,1);
      terendam(k,m);
      terendam(1,k);
      terendam(n,k);
    end;
    tulis;
  end;
end.
