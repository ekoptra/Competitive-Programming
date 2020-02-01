var
  a, b, hasil : int64;
  
function pangkat(n,m,lebih : int64):int64;
begin
  if m <= 1 then
    pangkat := (n*lebih) mod 1000000
  else if m mod 2 = 0 then
  begin
    n := (n*n) mod 1000000;
    pangkat := pangkat(n,m div 2,lebih);
  end else
  begin
    lebih := (lebih*n) mod 1000000;
    n := (n*n) mod 1000000;
    pangkat := pangkat(n,m div 2,lebih);
  end;
end;

function cek(n,k,m : int64):boolean;
begin
  if n > 999999 then
    cek := true
  else if m = 0 then
    cek := false
  else
    cek := cek(n*k,k,m-1);
end;

begin
  readln(a,b);
  hasil := pangkat(a mod 1000000,b,1);
  if cek(a,a,b) then
  begin
    if hasil < 10 then
      writeln('00000',hasil)
    else if hasil < 100 then
      writeln('0000',hasil)
    else if hasil < 1000 then
      writeln('000',hasil)
    else if hasil < 10000 then
      writeln('00',hasil)
    else if hasil < 100000 then
      writeln('0',hasil)
    else
      writeln(hasil);
  end else
      writeln(hasil);
end.