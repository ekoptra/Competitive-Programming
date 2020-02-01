type
  data = record
    id : string[5];
    nilai : int64;
  end;

var
  peserta : array [1..80] of data;
  tmp : char;
  datatmp : data;
  idCari : string;
  t,n,m,i, j, a, b, c,k : integer;
  dapat : boolean;

begin
  readln(t);
  for i := 1 to t do
  begin
    readln(n,m);
    readln(idCari);
    for j := 1 to n do
    begin
      peserta[j].id := '';
      for k := 1 to 5 do
      begin
        read(tmp);
        peserta[j].id += tmp;
      end;
      readln(tmp,a,b,c);
      peserta[j].nilai := (c*10000000)+a+(b*100);
      
      k := j;
      while k > 1 do
      begin
        if peserta[k].nilai > peserta[k-1].nilai then
        begin
          datatmp := peserta[k];
          peserta[k] := peserta[k-1];
          peserta[k-1] := datatmp;
          dec(k);
        end else
          break;
      end;
    end;
      
    dapat := false;
    for k := 1 to m do
      if peserta[k].id = idCari then
      begin
        dapat := true;
        break;
      end;
      
    if dapat then
      writeln('YA')
    else
      writeln('TIDAK');
  end;
end.