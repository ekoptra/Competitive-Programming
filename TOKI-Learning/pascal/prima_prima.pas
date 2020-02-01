const
  max = 10000;
var
  angka : array [2..max] of boolean;
  bilangan : array[1..1230] of longint;
  jumlah, awal, akhir, akhir2, k, l: longint;

function isPrime(x : longint):boolean;
var
  prima : boolean;
  p, tmp: longint;
begin
  prima := true;
  p := 1;
  tmp := trunc(sqrt(x));
  while (bilangan[p] <= tmp) and (prima) do
  begin
    if (x mod bilangan[p] = 0) then
      prima := false;
    inc(p);
  end;
  isPrime := prima;
end;

procedure getPosisi(var x, y : longint);
var 
  p : integer;
begin
  p := 1;
  while bilangan[p] < x do
    inc(p);
  x := p;
  while bilangan[p] <= y do
    inc(p);
  y := p-1;
end;

function pangkat10(x : integer):longint;
begin
  if x = 1 then
    pangkat10 := 10
  else
    pangkat10 := pangkat10(x-1)*10;
end;

function gabung(x,y : longint):longint;
var
  tmp1 : string;
begin
  str(y, tmp1);
  gabung := (x*pangkat10(length(tmp1))) + y; 
end; 

procedure buatPrima;
var
  i, j : longint;
begin
  for i := 2 to max do
    if (not angka[i]) then
    begin
      inc(jumlah);
      bilangan[jumlah] := i;
      for j := i to (max div i) do
        angka[i*j] := true;
    end; 
   bilangan[1230] := 100000;
end;

begin
  jumlah := 0;
  buatPrima;
  read(awal,akhir);
  akhir2 := akhir;
  getPosisi(awal,akhir);
  
  jumlah := 0;
  if bilangan[awal] <= akhir2 then
  begin
    for k := awal to akhir do
      for l := awal to akhir do
        if isPrime(gabung(bilangan[k],bilangan[l])) then
        begin
          inc(jumlah);
          writeln(bilangan[k], ' ',bilangan[l]);
        end;
  end;
  
  if jumlah = 0 then
    writeln('TIDAK ADA');
end.