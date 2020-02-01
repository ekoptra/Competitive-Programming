var
	a : longint;
begin
	readln(a);
	case a of 
	1..9 : writeln('satuan');
	10..99 : writeln('puluhan');
	100..999 : writeln('ratusan');
	1000..9999 : writeln('ribuan');
	10000..99999 : writeln('puluhribuan');
	end;
end.