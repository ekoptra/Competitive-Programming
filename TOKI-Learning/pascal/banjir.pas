var
  baris : array[1..80,1..80] of char;
  kunjung : array[1..80,1..80] of boolean;
  n, m, t, j, k, o: integer;
  ada : boolean;
  
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
      kunjung[i][j] := false;
end;

function tes(l, p: integer; cek : boolean):boolean;
var
  kiri,kanan,atas,bawah, kiriAtas, kiriBawah, kananAtas, kananBawah : boolean;
begin
  if (l > n) or (p > m) or (l < 1) or (p < 1) then
    tes := false
  else if (baris[l][p] = '#') then
  begin
    if cek then
      tes := true
    else
      tes := false;
  end else if kunjung[l][p] then
      tes := true
  else 
  begin 
     kunjung[l][p] := true;
     kiri := tes(l,p-1,true);
     kanan := tes(l,p+1,true);
     atas := tes(l-1,p,true);
     bawah := tes(l+1,p,true);
    
     tes := kiri and kanan and atas and bawah;
  end;
end;

begin
  readln(t);
  for j := 1 to t do
  begin
    read(n,m);
    infalse;
    ada := false;
    baca;
    for o := 1 to n do
    begin
      if not ada then
      begin
        for k := 1 to m do
        begin
          if (not kunjung[o][k]) then
          begin
            if tes(o,k,false) then
            begin
              ada := true;
              break;
            end;
          end;  
        end;
      end else
        break;
    end;
    
    if ada then
      writeln('YA')
    else
      writeln('TIDAK');
          
  end;
end.
