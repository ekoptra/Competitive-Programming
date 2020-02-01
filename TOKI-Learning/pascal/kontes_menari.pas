type 
  jenis = record
    d : longint;
    t : char;
  end;
  
var
  gerakan : array [1..10] of jenis;
  visit : array [1..10] of boolean;
  angka : array [1..10] of longint;
  n, g, j, k, r, y, npola, tmp, juri: longint;
  pola, polatmp : array [1..4000000] of longint;
  spasi : char;
  yakin : boolean;
  s : string;

procedure buatPola;
begin
  inc(npola);
  yakin := false;
  tmp := 0;
  for k := 1 to r do
  begin
    if k = 1 then
    begin
      tmp += gerakan[angka[k]].d;
      if gerakan[angka[k]].t = 'Y' then
        yakin := true;
    end  else
    begin
      if gerakan[angka[k-1]].t = 'B' then
        tmp += gerakan[angka[k]].d
      else if gerakan[angka[k-1]].t = 'P' then
        tmp += (gerakan[angka[k]].d*2)
      else if gerakan[angka[k-1]].t = 'L' then
        tmp += (gerakan[angka[k]].d div 2)
      else
      begin
        tmp += gerakan[angka[k]].d;
        yakin := true;
      end;
      if yakin then
        tmp += y;
    end;
  end;
  pola[npola] := tmp;
end;  

procedure permutasi(kedalaman : byte);
var
  i : byte;
begin
  if kedalaman > r then
     buatPola
  else
    for i := 1 to n do
      if not visit[i] then
      begin
        visit[i] := true;
        angka[kedalaman] := i;
        permutasi(kedalaman + 1);
        visit[i] := false;
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
    if pola[l] < pola[m] then
    begin
      polatmp[size] := pola[l];
      inc(l);
    end else
    begin
      polatmp[size] := pola[m];
      inc(m);
    end;
  end;
  
  while l <= tengah do
  begin
    inc(size);
    polatmp[size] := pola[l];
    inc(l);
  end;
  
  while m <= kanan do
  begin
    inc(size);
    polatmp[size] := pola[m];
    inc(m);
  end;
  
  for l := 1 to size do
    pola[kiri+l-1] := polatmp[l];  
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

function cekatas(x : longint):longint;
begin
  if x = npola then
    cekatas := x +1
  else if pola[x] <> pola[x+1] then
    cekatas := x+1
  else
    cekatas := cekatas(x+1);
end;

function cari(kiri, kanan : longint):longint;
var
  tengah : longint;
begin
  if kanan < kiri then
    cari := kanan + 1
  else
  begin
    tengah := (kiri + kanan) div 2;
    if pola[tengah] = juri then
      cari := cekatas(tengah)
    else if pola[tengah] < juri then
      cari := cari(tengah+1,kanan)
    else 
      cari := cari(kiri, tengah-1);
  end;
end;

begin
  readln(s);
  readln(n,r,y,j);
  npola := 0;
  for g := 1 to n do
    readln(gerakan[g].d,spasi,gerakan[g].t);
  permutasi(1);
  margeSort(1,npola);
  for g := 1 to j do
  begin
    readln(juri);
    writeln(npola - cari(1,npola) + 1);
  end;
end.