var
  bebek, bebektmp: array [1..10000] of longint;
  batas : array [1..20] of longint;
  m, n, normal, tambahSatu, i, anggota : longint;
  dapat : boolean;

procedure bagiKelompok(posisi, nrml, satu, kelompok : longint);
begin
  if kelompok = n then
  begin
    if (not dapat) and ((nrml = 0) or (satu=0)) then
    begin
      dapat := true;
      for i := 1 to kelompok-2 do
        write(batas[i], ' ');
      writeln(batas[kelompok-1]);
      exit;
    end;
  end else
  begin 
     if satu <> 0 then
       if (bebek[posisi+anggota+1] <> bebek[posisi+anggota+2]) then
       begin
         batas[kelompok] := bebek[posisi+anggota+1]+1;
         bagiKelompok(posisi+anggota+1, nrml, satu-1, kelompok+1);
       end;
       
     if nrml <> 0 then
       if (bebek[posisi+anggota] <> bebek[posisi+anggota+1]) then
       begin
         batas[kelompok] := bebek[posisi+anggota]+1;
         bagiKelompok(posisi+anggota,nrml-1,satu,kelompok+1);
       end;
  end;
end;

procedure marge(kiri, tengah, tengah2, kanan : longint);
var
  l, m, size : longint;
begin
  size := 0;
  l := kiri;
  m := tengah2;
  
  while (l <= tengah) and (m <= kanan) do
  begin
    inc(size);
    if bebek[l] < bebek[m] then
    begin
      bebektmp[size] := bebek[l];
      inc(l);
    end else
    begin
      bebektmp[size] := bebek[m];
      inc(m);
    end;
  end;
  
  while l <= tengah do
  begin
    inc(size);
    bebektmp[size] := bebek[l];
    inc(l);
  end;
  
  while m <= kanan do
  begin
    inc(size);
    bebektmp[size] := bebek[m];
    inc(m);
  end;
  
  for l := 1 to size do
    bebek[kiri+l-1] := bebektmp[l];  
end;

procedure margeSort(kiri, kanan : longint);
var
  tengah : longint;
begin
  if kiri < kanan then
  begin
    tengah := (kiri+kanan) div 2;
    margeSort(kiri,tengah);
    margeSort(tengah+1,kanan);
    marge(kiri,tengah,tengah+1,kanan);
  end;
end;

begin
  readln(m);
  for i := 1 to m do
    readln(bebek[i]);
  readln(n);
  tambahSatu := m mod n;
  normal := n - tambahSatu;
  anggota := m div n;
  margeSort(1,m);
  dapat := false;
  bagiKelompok(0,normal,tambahSatu,1);
end.