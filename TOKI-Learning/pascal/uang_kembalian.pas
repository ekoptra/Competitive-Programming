var
    koin : array [1..500] of longint;
    nilai : array [0..50000] of longint;
    n, k, i, j, best : longint;

function min(x, y : longint):longint;
begin
    if x > y then
        min := y
    else
        min := x;
end;

function solve:longint;
begin
    nilai[0] := 0;

    for i := 1 to k do
    begin
        best := 200000000;
        for j := 1 to n do
            if koin[j] <= i then
                best := min(best, nilai[i - koin[j]] + 1);
        nilai[i] := best;
    end;
    if nilai[k] >= 200000000 then
        solve := -1
    else
        solve := nilai[k];
end;

begin
    readln(n);
    for i := 1 to n do
        read(koin[i]);
    readln;
    readln(k);
    writeln(solve());
end.