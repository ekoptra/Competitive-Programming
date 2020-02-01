var
  score, scoreku : array[1..10] of integer;
  i, n, jml, t, k, j,tmp, l, m, max: integer;
  dapat : boolean;
  
function cek:boolean;
begin
  for i := 1 to n do
    if score[i] <> scoreku[i] then
    begin
      cek := false;
      exit;
    end;
  cek := true;
end;

procedure urutkan;
begin
  for l := 1 to n-1 do
  begin
    max := l;
    for m := l+1 to n do
      if scoreku[max] < scoreku[m] then
        max := m;
    
    tmp := scoreku[max];
    scoreku[max] := scoreku[l];
    scoreku[l] := tmp;
  end;
end;

procedure bagi(x, y, kondisi : integer);
begin
  if y > n then
  begin
      inc(x);
      y := x+1;
  end;
  
  if x = n then
  begin
    if cek then
    begin
      dapat := true;
      exit;
    end;
  end
  else if kondisi = 1 then
  begin
     inc(score[x],3);
     bagi(x,y+1,1);
     bagi(x,y+1,2);
     bagi(x,y+1,3);
     dec(score[x],3);
  end 
  else if kondisi = 2 then
  begin
     inc(score[y],3);
     bagi(x,y+1,1);
     bagi(x,y+1,2);
     bagi(x,y+1,3);
     dec(score[y],3);
  end else
  begin
    inc(score[x]);
    inc(score[y]);
    bagi(x,y+1,1);
    bagi(x,y+1,2);
    bagi(x,y+1,3);
    dec(score[x]);
    dec(score[y]);
  end;
end;

begin
  readln(t);
  for j := 1 to t do
  begin
    read(n);
    for k := 1 to n do
      read(scoreku[k]);
    readln;
    dapat := false;
    urutkan;
    bagi(1,2,1);
    bagi(1,2,2);
    bagi(1,2,3);
    
    if dapat then
      writeln('YES')
    else
      writeln('NO');
  end;
end.