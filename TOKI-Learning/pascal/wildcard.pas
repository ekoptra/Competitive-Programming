var
  pola, kata : string;
  l, n, p : byte;
  
function cekdepan(i, j, k: byte):boolean;
begin
  if i = k then
    cekdepan := true
  else if j > length(kata) then
    cekdepan := false
  else if pola[i] = kata[j] then
    cekdepan := cekdepan(i+1,j+1,k)
  else
    cekdepan := false;
end;

function cekbelakang(i,j,k : byte):boolean;
begin
  if (i = k) and (j >= k-1) then
    cekbelakang := true
  else if j < 1 then
    cekbelakang := false
  else if pola[i] = kata[j] then
    cekbelakang := cekbelakang(i-1,j-1,k)
  else
    cekbelakang := false;
end;

begin
  readln(pola);
  p := pos('*',pola);
  readln(n);
  for l := 1 to n do
  begin
    readln(kata);
    if cekdepan(1,1,p) and cekbelakang(length(pola),Length(kata),p) then
      writeln(kata);
  end;
end.