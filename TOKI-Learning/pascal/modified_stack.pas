type
  isi = record
    nilai : int64;
    banyak : int64;
   end;
var
  stack : array [1..1000] of isi;
  n,i,j, x,y: int64;
  belakang, jumlah: int64;
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
  stack[belakang].nilai := x;
  stack[belakang].banyak := y;
  jumlah := jumlah + y;
  writeln(jumlah);
end;

procedure adx(s : string);
begin
  x := 0;
  bacaX(s,x);
  for i := 1 to belakang do
    stack[i].nilai := stack[i].nilai + x;
end;

procedure dex(s : string);
begin
  y := 0;
  bacaX(s,y);
  for i := 1 to belakang do
    stack[i].nilai := stack[i].nilai - y;
end;

procedure del(s :string);
begin
  x := 0;
  bacaX(s,x);
  writeln(stack[belakang].nilai);
  jumlah := jumlah - x;
  while x <> 0 do
  begin
    if stack[belakang].banyak <> 0 then
    begin
      dec(stack[belakang].banyak);
      dec(x);
    end else
      dec(belakang);
  end;
end;

begin
  readln(n);
  belakang := 0;
  jumlah := 0;
  for j := 1 to n do
  begin
    readln(perintah);
    if perintah[1] = 'a' then
    begin
      if perintah[3] = 'd' then
        add(perintah)
      else
        adx(perintah);
    end else
    begin
      if perintah[3] = 'l' then
        del(perintah)
      else
        dex(perintah);
    end;
  end;
end.