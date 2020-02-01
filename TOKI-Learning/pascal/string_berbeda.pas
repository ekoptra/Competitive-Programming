var
  queue : array [1..50] of char;
  depan, belakang, j,k,min, beda: byte;
  a, b: string;

function jumlahBeda(x,y : string):byte;
var
  i, jml: byte;
begin
  jml := 0;
  for i := 1 to length(x) do
    if x[i] <> y[i] then
      inc(jml);
  jumlahBeda := jml;
end;

function gabung(l,m : byte):string;
var
  i : byte;
  tmp : string;
begin
  tmp := '';
  for i := l to m do
    tmp := tmp + queue[i];
  gabung := tmp;   
end;

begin
  readln(a);
  readln(b);
  belakang := 0;
  depan := 1;
  for j := 1 to length(a) do
  begin
    queue[j] := b[j];
    inc(belakang);
  end;
  
  min := 51;
  for k := j+1 to length(b) do
  begin
    beda := jumlahBeda(gabung(depan,belakang),a);
    if beda < min then
      min := beda;
    queue[k] := b[k];
    inc(belakang);
    inc(depan); 
  end;
  beda := jumlahBeda(gabung(depan,belakang),a);
    if beda < min then
      min := beda;
  writeln(min);
end.