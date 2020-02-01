type
  ingat = record
    memo : array[0..1000] of longint;
    test : array[0..1000] of boolean;
  end;
  
function max(a,b : integer):integer;
begin
  if a > b then
    max := a
  else
    max := b;
end;

var
  p : integer;
  check : ingat;
  
function solve(c: integer):longint;
var
  best, nilai: longint;
begin
  if c <= 1 then
    solve := c
  else if check.test[c] then
    solve := check.memo[c]
  else
  begin
     best := solve(c div 2) + solve(c div 3) + solve(c div 4);
     nilai := max(best, c);
 
     check.test[c] := true;
     check.memo[c] := nilai;
      
     solve := nilai ;
   end;
end;

begin
  readln(p);
  writeln(solve(p));
end.
