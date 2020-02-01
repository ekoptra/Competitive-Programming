var 
  data : array [1..100000] of longint;
  n, i, q, l, r: longint;

function cekAtas(x : longint):longint;
begin
  if x = n then
    cekAtas := n
  else if data[x] <> data[x+1] then
    cekAtas := x
  else
    cekAtas := cekAtas(x+1);
end; 

function cekBawah(x:longint):longint;
begin
  if x = n then
    cekBawah := n + 1
  else if data[x] = data[x+1] then
    cekBawah := cekBawah(x+1)
  else
    cekBawah := x + 1;
end;
  
function batasBawahAtas(kiri, kanan, cari : longint; atas : boolean):longint;
var
  tengah : longint;
begin
  if kanan < kiri then
  begin
    if atas then
      batasBawahAtas := kanan
    else
      batasBawahAtas := kiri;
  end else
  begin
    tengah := (kiri+kanan) div 2;
    if data[tengah] = cari then
    begin
      if atas then
        batasBawahAtas := cekAtas(tengah)
      else
        batasBawahAtas := cekBawah(tengah);
    end
    else if data[tengah] < cari then
      batasBawahAtas := batasBawahAtas(tengah+1, kanan,cari, atas)
    else
      batasBawahAtas := batasBawahAtas(kiri,tengah-1,cari,atas);
  end;
end;

begin
  readln(n);
  for i := 1 to n do
    read(data[i]);
  readln;
  readln(q);
  for i := 1 to q do
  begin
    readln(l, r);
    writeln(batasBawahAtas(1,n,r,true) -
      batasBawahAtas(1,n,l,false) + 1);
  end;
end.