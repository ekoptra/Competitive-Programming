var
  petak : array [1..20,1..8] of char;
  full : array [1..20] of boolean;
  r,c, i, j, k, bawah: byte;

function cekFull:boolean;
var
  dapat : boolean;
begin
  dapat := false;
  bawah := 0;
  for i := 1 to r do
  begin
    full[i] := true;
    for j := 1 to c do
    begin
      if petak[i][j] <> '1' then
      begin
        full[i] := false;
        break;
      end;
    end;  
    if full[i] then
    begin
      dapat := true;
      bawah := i;
    end;
  end;
  
  cekFull := dapat;
end;

procedure rubah;
begin
  for i := 1 to r do
    if full[i] then
      for j := 1 to c do
        petak[i][j] := '0';
end;

function petakKosong(baris, kolom : byte):byte;
begin
  if baris > r then
    petakKosong := baris - 1
  else if petak[baris][kolom] = '0' then
    petakKosong := petakKosong(baris+1,kolom)
  else
    petakKosong := baris - 1;
end;

procedure runtuhkan;
begin
  for i := 1 to c do
  begin
    j := petakKosong(bawah+1,i);
    k := bawah - 1;
    while k > 0 do
    begin
      if petak[k][i] = '1' then
      begin
        petak[j][i] := '1';
        petak[k][i] := '0';
        dec(j);
      end;
      dec(k);
    end;
  end;
end;

begin
  readln(r,c);
  for i := 1 to r do
  begin
    for j := 1 to c do
      read(petak[i][j]);
     readln;
  end;
  while cekFull do
  begin
    rubah;
    runtuhkan;
  end;
  for i := 1 to r do
  begin
    for j := 1 to c-1 do
      write(petak[i][j]);
    writeln(petak[i][c]);
  end;
end.