function cekPolidrom(kata :string):boolean;
var
  j, a, b : integer;
begin
  a := 1;
  b := Length(kata);
  
  while a < b do
  begin
    if kata[a] <> kata[b] then
    begin
      cekPolidrom := false;
      exit;
    end;
    inc(a);
    dec(b);
  end;
  
  cekPolidrom := true;
  
end;

var
  kalimat, hasil : AnsiString;
  kata : string;
  awal, akhir, i : integer;
begin
  readln(kalimat);
  awal := 1;
  akhir := 1;
  hasil := '';
  while (akhir <= Length(kalimat)) do
  begin
    kata := '';
    for i := awal to Length(kalimat) do
    begin
      if kalimat[i] = ' ' then
      begin
        akhir := i - 1;
        break;
      end;
      kata := kata + kalimat[i];
      if i = Length(kalimat) then
      begin
        akhir := i;
        break;
      end;
    end;
    
    if cekPolidrom(kata) then
      hasil := hasil + kata + ' ';
      
    akhir := akhir+2;
    awal := akhir;     
  end;
  
  for i := 1 to Length(hasil)-1 do
    write(hasil[i]);
  writeln;

end.