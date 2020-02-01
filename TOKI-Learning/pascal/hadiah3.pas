var
  pangkat3 : array [0..19] of longint;
  jumlah : array[0..19] of integer;
  hadiah, min, l, j, akhir: longint;

procedure pangkat;
var
  i : byte;
begin
  pangkat3[0] := 1;
  for i := 1 to 19 do
    pangkat3[i] := pangkat3[i-1]*3;
end;

procedure kurangkan(n : longint; k : byte);
begin
  if k < 0 then
    exit;
    
  while ((n-pangkat3[k]) >= 0) do
  begin
    n := n - pangkat3[k];
    inc(jumlah[k]);
    inc(min);
  end;
  
  if (n > 0) then
     kurangkan(n,k-1);
end;

begin
  readln(hadiah);
  min := 0;
  pangkat;
  kurangkan(hadiah,19);
  writeln(min);
  akhir := 19;
  for j := 19 downto 0 do
    if jumlah[j] <> 0 then
    begin
      akhir := j;
      break;
    end;
    
  for j := 0 to akhir-1 do
    for l := 1 to jumlah[j] do
      write(pangkat3[j],' ');
  
  for l := 1 to jumlah[akhir]-1 do
    write(pangkat3[akhir], ' ');
  
  writeln(pangkat3[akhir]);
end.