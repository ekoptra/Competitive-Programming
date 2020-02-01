var
  isi : array [1..100,1..100] of char;
  i, j, r, c, n, k: byte;
  spasi : char;
  a : array [1..100] of string;

function kiriKanan(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    kiriKanan := true
  else if m > c then
    kiriKanan := false
  else
    if isi[l][m] = a[k][p] then
      kiriKanan := kiriKanan(l,m+1,p+1,k)
    else
      kiriKanan := false;
end;

function kananKiri(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    kananKiri := true
  else if m < 1 then
    kananKiri := false
  else
    if isi[l][m] = a[k][p] then
      kananKiri := kananKiri(l,m-1,p+1,k)
    else
      kananKiri:= false;
end;

function atasBawah(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    atasBawah := true
  else if l > r then
    atasBawah := false
  else if isi[l][m] = a[k][p] then
    atasBawah := atasBawah(l+1,m,p+1,k)
  else
    atasBawah := false;   
end;

function bawahAtas(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    bawahAtas := true
  else if l < 1 then
    bawahAtas := false
  else
    if isi[l][m] = a[k][p] then
      bawahAtas := bawahAtas(l-1,m,p+1,k)
    else
      bawahAtas := false;
end;

function kiriatasKananbawah(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    kiriatasKananbawah := true
  else if (l > r) or (m>c)  then
    kiriatasKananbawah := false
  else
    if isi[l][m] = a[k][p] then
      kiriatasKananbawah := kiriatasKananbawah(l+1,m+1,p+1,k)
    else
      kiriatasKananbawah := false;
end;

function kananbawahKiriatas(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    kananbawahKiriatas := true
  else if (l < 1) or (m < 1)  then
    kananbawahKiriatas := false
  else
    if isi[l][m] = a[k][p] then
      kananbawahKiriatas := kananbawahKiriatas(l-1,m-1,p+1,k)
    else
      kananbawahKiriatas := false;
end;

function kiribawahKananatas(l,m,p,k:byte):boolean;
begin
  if p > Length(a[k]) then
    kiribawahKananatas := true
  else if (l < 1) or (m > c)  then
    kiribawahKananatas := false
  else
    if isi[l][m] = a[k][p] then
      kiribawahKananatas := kiribawahKananatas(l-1,m+1,p+1,k)
    else
      kiribawahKananatas := false;
end;

function kananatasKiribawah(l,m,p, k : byte):boolean;
begin
  if p > Length(a[k]) then
    kananatasKiribawah := true
  else if (l > r) or (m < 1)  then
    kananatasKiribawah := false
  else
    if isi[l][m] = a[k][p] then
      kananatasKiribawah := kananatasKiribawah(l+1,m-1,p+1,k)
    else
      kananatasKiribawah := false;
end;

procedure cek(k : byte);
var
  sama : boolean;
begin
  sama := false;
  for i := 1 to r do
    for j := 1 to c do
    begin  
      if kirikanan(i,j,1,k) then
        sama := true
      else if kananKiri(i,j,1,k) then
        sama := true
      else if atasBawah(i,j,1,k) then
        sama := true
      else if bawahAtas(i,j,1,k) then
        sama := true
      else if kiriatasKananbawah(i,j,1,k) then
        sama := true
      else if kananbawahKiriatas(i,j,1,k) then
        sama := true
      else if kiribawahKananatas(i,j,1,k) then
        sama := true
      else if kananatasKiribawah(i,j,1,k) then
        sama := true;
               
      if sama then
        break;
    end;
  
  if sama then
    writeln(a[k],' ','Y')
  else 
    writeln(a[k],' ', 'T');
end;

begin
  readln(r,c);
  for i := 1 to r do
  begin
    for j := 1 to c-1 do
      read(isi[i][j],spasi);
    readln(isi[i][c]);
  end;
  readln(n);
  for k := 1 to n do
    readln(a[k]);
  for k := 1 to n do
    cek(k);
end.