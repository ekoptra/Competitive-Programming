function balik(n: string):string;
var
	i : byte;
	kata : string;
begin
	kata := '';
	
	if n = '0' then
		balik := n
	else
	begin
		for i := length(n) downto 1 do
			kata := kata + n[i];
	
		for i := 1 to length(kata) do
		begin
			if kata[1] = '0' then
				delete(kata,1,1)
			else
				break;
		end; 
		balik := kata;
	end;
end;

var
	n : array [0..10001] of string;
	x, i : word;
begin
	readln(x);
	for i := 1 to x do
		readln(n[i-1]);
	for i := 1 to x do
		writeln(balik(n[i-1]));
end.