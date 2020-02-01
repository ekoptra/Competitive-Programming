type
  isi = record
    nilai : int64;
    banyak : int64;
   end;
var
  queue: array [1..1000] of isi;
  tmp : isi;
  n,i,j, x,y, belakang, depan, jumlah: int64;
  xtemp, ytemp, perintah : string;
  
function konvert(s : string):int64;
var
  e,tmp : int64;
begin
  val(s,tmp,e);
  konvert := tmp;
end;

procedure bacaXY(s : string; var l, m : int64);
begin
  xtemp := '';
  ytemp := '';
  i := 5;
  while s[i] <> ' ' do
  begin
    xtemp := xtemp + s[i];
    inc(i);
  end;
  
  inc(i);
  while i <= Length(s) do
  begin
    ytemp := ytemp + s[i];
    inc(i);
  end;
  
  l := konvert(xtemp);
  m := konvert(ytemp);
end;

procedure bacaX(s : string; var l : int64);
begin
  xtemp := '';
  i := 5;
  while i <= Length(s) do
  begin
    xtemp := xtemp + s[i];
    inc(i);
  end;
  l := konvert(xtemp);
end;

procedure add(s: string);
begin
  x := 0;
  y := 0;
  bacaXY(s,x,y);
  inc(belakang);
  queue[belakang].nilai := x;
  queue[belakang].banyak := y;
  jumlah := jumlah + y;
  writeln(jumlah);
end;

procedure rev;
var
  k : int64;
begin
  k := belakang;
  i := depan;
  while k > i do
  begin
   tmp := queue[k];
   queue[k] := queue[i];
   queue[i] := tmp;
   dec(k);
   inc(i);
  end;
end;

procedure del(s :string);
begin
  x := 0;
  bacaX(s,x);
  writeln(queue[depan].nilai);
  jumlah := jumlah - x;
  while x <> 0 do
  begin
    if queue[depan].banyak <> 0 then
    begin
      dec(queue[depan].banyak);
      dec(x);
    end else
      inc(depan);
  end;
end;

begin
  readln(n);
  belakang := 0;
  jumlah := 0;
  depan := 1;
  for j := 1 to n do
  begin
    readln(perintah);
    if perintah[1] = 'a' then
      add(perintah)
    else if perintah[1] = 'd' then
      del(perintah)
    else
      rev;
  end;
end.