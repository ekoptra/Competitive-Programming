var
  data : array [1..100000] of longint;
  n, i : longint;

procedure quickSort(kiri, kanan : longint);
var
  j, k, tmp, pivot: longint;
begin
  if kiri < kanan then
  begin
    pivot := data[(kiri+kanan) div 2];
    i := kiri;
    j := kanan;
    
    while i <= j do
    begin
      while i < kanan do
        if data[i] < pivot then
          inc(i)
        else
          break;
          
      while j > kiri do
        if data[j] > pivot then
          dec(j)
        else
          break;
           
      if i <= j then
      begin
        tmp := data[i];
        data[i] := data[j];
        data[j] := tmp;
        dec(j);
        inc(i);
      end;
    end;
    
    quickSort(kiri, j);
    quickSort(i, kanan);
  end;
end;

begin
  readln(n);
  for i := 1 to n do
    readln(data[i]);
  quickSort(1,n);
  for i := 1 to n do
    writeln(data[i]);
end.