function kombinasi(a,b,c : qword):QWord ;
var
  kecil, besar, total: QWord;
  i,k, n: qword;
  j : qword;
  pembilang : array [1..1000] of qword;
  pembagi : array [1..53] of qword;
  prima : array[1..53] of qword = (2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,
                                    53,59,61,67,71,73,79,83,89,97,101,
                                    103,107,109,113,127,131,137,139,
                                    149,151,157,163,167,173,179,181,191,193,197,
                                    199,211,223,227,229,233,239,241);
begin
  if a > b then
  begin
    kecil := b;
    besar := a;
  end else
  begin
    kecil := a; 
    besar := b;
  end;
    
  inc(besar);
  
  for i := besar to c do
    pembilang[i] := i;
  
  for i := 2 to kecil do
  begin
    k := i;
    for j := 1 to 53 do
    begin
      while (k mod prima[j] = 0) do
      begin
        inc(pembagi[j]);
        k := k div prima[j];
      end;
      
      if (k = 1) then
        break;
    end;
  end;

  for i := 1 to 53 do
  begin
    if pembagi[i] <> 0 then
    begin
      k := besar;
      repeat
        if (pembilang[k] mod prima[i] = 0) then
        begin
          pembilang[k] := pembilang[k] div prima[i];
          dec(pembagi[i]);
        end else
          inc(k);
       until (pembagi[i] = 0);
    end;
  end;
  
  total := 1;
  
  for i := besar to c do
    total := (total*pembilang[i]) mod 1000000;
    
  kombinasi := total;
  
end;

var 
  total, pengurang, jumlahMiring, jumlahLurus, n : QWord  ;

begin
  readln(n);
  total := 0;
  pengurang := 0;
  jumlahMiring := 0;
  
  while n >= pengurang do
  begin
    jumlahLurus := n - pengurang;
    total := (total + kombinasi(jumlahLurus, jumlahMiring, jumlahLurus+jumlahMiring)) mod 1000000;
    pengurang := pengurang + 3;
    inc(jumlahMiring);
  end;
  
  writeln(total);
  
end.