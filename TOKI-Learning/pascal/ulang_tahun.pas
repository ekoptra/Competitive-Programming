type
  kontak = record
    nama,nmr : string;
  end;

var
  nomor : array [1..100000] of kontak;
  tmp : string;
  n,q,i,j : longint;

procedure cari(kiri, kanan : longint; s : string);
var
  tengah : longint;
begin
  if kanan >= kiri then
  begin
    tengah := (kiri+kanan) div 2;
    if nomor[tengah].nama = s then
      writeln(nomor[tengah].nmr)
    else if nomor[tengah].nama < s then
      cari(tengah+1,kanan,s)
    else
      cari(kiri,tengah-1,s);
  end;
end;

begin
  readln(n,q);
  for i := 1 to n do
  begin
    readln(tmp);
    nomor[i].nama := copy(tmp,1,pos(' ',tmp)-1);
    nomor[i].nmr := copy(tmp,pos(' ',tmp)+1,7);
  end;
  for i := 1 to q do
  begin
    readln(tmp);
    cari(1,n,tmp);
  end;
end.