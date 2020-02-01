var
    angka : array [1..100000] of longint;
    n, i, q, d, tengah : longint;

function cekbawah(x : longint):longint;
begin
    if x = 1 then
        cekbawah := x
    else if angka[x] = angka[x-1] then
        cekbawah := cekbawah(x-1)
    else
        cekbawah := x;
end;

function cari(kiri, kanan, nilai : longint):longint;
begin
    if kanan < kiri then
        cari := -1
    else
    begin
        tengah := (kiri+kanan) div 2;
        if angka[tengah] = nilai then
            cari := cekbawah(tengah) - 1
        else if angka[tengah] < nilai then
            cari := cari(tengah+1,kanan,nilai)
        else
            cari := cari(kiri,tengah-1,nilai);
    end;
end;

begin
    readln(n);
    for i := 1 to n do
        readln(angka[i]);
    readln(q);
    for i := 1 to q do
    begin
        readln(d);
        writeln(cari(1, n, d));
    end;    
end.