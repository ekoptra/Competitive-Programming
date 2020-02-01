var
    kataku : string;
    i,j,k,l,maks,best,n : integer;
    computed : array [1..50,1..50] of Boolean;
    memo : array [1..50,1..50] of integer;

function max(a,b : integer):integer;
begin
    if a > b then
        max := a
    else 
        max := b;
end;

function hitung(kata : string; i, j : integer):integer;
var
    max2 : integer;
begin
    if computed[i][j] then
    begin
        hitung := memo[i][j];
        exit;
    end;

    if i = j then
        max2 := 1
    else if j < i then
        max2 := 0
    else if kata[j] = kata[i] then
        max2 := 2 + hitung(kata,i+1,j-1)
    else
        max2 := max(hitung(kata,i,j-1), hitung(kata,i+1,j));
    
    if i <= j then
    begin
        computed[i][j] := true;
        memo[i][j] := max2;
    end;
    
    hitung := max2;
end;

function solve(kata : string):integer;
begin
    maks := 0;
    for k := 1 to Length(kata) do
    begin
        j := Length(kata);
        best := hitung(kata,k,j);
        if maks < best then
            maks := best;
    end;

    solve := maks;
end;

procedure falsekan;
begin
    for i := 1 to 50 do
        for j := 1 to 50 do
            computed[i][j] := false;
end;

begin
    readln(n);
    for l := 1 to n do
    begin
        falsekan;
        readln(kataku);
        writeln(solve(kataku));
    end;
end.