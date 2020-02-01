var
  kata : array [1..3000] of AnsiString ;
  perbedaan : array [1..3000] of longint;
  kalimat : AnsiString ;
  i, j,k,n,max, tmp2, index,min: longint;

function selisih(p, q: longint) :longint;
var
  tmp: longint;
  kecil, besar : char;
begin
  if q > length(kata[p]) then
  begin
    selisih := 200000;
    exit;
  end;
      
  if kalimat[q] > kata[p][q] then
  begin
     kecil := kata[p][q];
     besar := kalimat[q];    
  end else
  begin
    besar := kata[p][q];
    kecil := kalimat[q];
  end;
  tmp := ord(besar) - ord(kecil);
  if tmp > 13 then
    tmp := 26 - ord(besar) + ord(kecil);
  
  perbedaan[p] := perbedaan[p] + tmp;
  selisih := perbedaan[p];
end;

begin
  readln(n);
  for i := 1 to n do
    readln(kata[i]);
  readln(kalimat);
  
  for i := 1 to Length(kalimat) do
  begin
    min := 200000;
    index := 1;
    for j := 1 to n do
    begin
       tmp2 := selisih(j, i);
       if tmp2 < min then
       begin
         min := tmp2;
         index := j;
       end;
    end;
    
    for k := 1 to i-1 do
      write(kata[index][k]);
    writeln(kata[index][i]);
  end;
end.