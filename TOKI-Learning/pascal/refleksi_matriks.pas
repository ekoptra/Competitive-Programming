type
  matriks = array [1..75, 1..75] of byte;
  
function is_identik(a,b : matriks; n, m : byte):boolean;
var
  i,j : byte;
begin
  for i := 1 to n do
    for j := 1 to m do
      if (a[i][j] <> b[i][j]) then
      begin
        is_identik := false;
        exit;
      end;
  
  is_identik := true;
end;

function is_vertikal(a,b: matriks; n,m : byte):boolean;
var
  i,j,k : byte;
begin
  for i := 1 to n do
  begin
    k := m;
    for j := 1 to m do
    begin
      if (a[i][j] <> b[i][k]) then
      begin
        is_vertikal := false;
        exit;
      end;
      dec(k);
    end;
  end;
  
  is_vertikal := true;
end;

function is_horizontal(a,b : matriks; n,m : byte):boolean;
var
  i,j,k : byte;
begin
  k := n;
  for i := 1 to n do
  begin
    for j := 1 to m do
    begin
      if (a[i][j] <> b[k][j]) then
      begin
        is_horizontal := false;
        exit;
      end;
    end;
    dec(k);
  end;
  
  is_horizontal := true;
end;

function is_diagonalkanan(a,b: matriks; n,m:byte):boolean;
var
  i,j,k,l: byte;
begin
  l := 1;
  for i := 1 to n do
  begin
    k := 1;
    for j := 1 to m do
    begin
       if (a[i][j] <> b[k][l]) then
       begin
         is_diagonalkanan := false;
         exit;
       end;
       inc(k);
    end;
    inc(l);
  end;
  
  is_diagonalkanan := true;
end;

function is_diagonalkiri(a,b:matriks; n,m :byte):boolean;
var
  i,j,k,l : byte;
begin
  l := n;
  for i := 1 to n do
  begin
    k := m;
    for j := 1 to m do
    begin
       if (a[i][j] <> b[k][l]) then
       begin
         is_diagonalkiri:= false;
         exit;
       end;
       dec(k);
    end;
    dec(l);
  end;
  
  is_diagonalkiri := true;
end;

var 
  a, b : matriks;
  n, m, i, j: byte;
begin
  read(n,m);
  for i := 1 to n do
    for j := 1 to m do
      read(a[i][j]);
    
  read(n,m);
  for i := 1 to n do
    for j := 1 to m do
      read(b[i][j]);
      
  if is_identik(a,b,n,m) then
    writeln('identik')
  else if is_vertikal(a,b,n,m) then
    writeln('vertikal')
  else if is_horizontal(a,b,n,m) then
    writeln('horisontal')
  else if is_diagonalkanan(a,b,n,m) then
    writeln('diagonal kanan bawah')
  else if is_diagonalkiri(a,b,n,m) then
    writeln('diagonal kiri bawah')
  else
    writeln('tidak identik');
end.