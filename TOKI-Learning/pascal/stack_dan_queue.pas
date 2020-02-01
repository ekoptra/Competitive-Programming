type
	p = ^data;
	data = record
		angka : longint;
		next : p;
		before : p;
	end;
	
var
	head, tail : p;
	perintah : string;
	k, tmp, i, n: longint;
	
procedure pop_back;
var
	hapus : p;
begin
	if n = 1 then
	begin
		hapus := tail;
		head := nil;
		tail := nil;
		dispose(hapus);
		dec(n);
		exit;
	end;
	hapus := tail;
	tail := tail^.before;
	tail^.next := nil;
	dispose(hapus);
	dec(n);
end;

procedure pop_front;
var 
	hapus : p;
begin
	if n = 1 then
	begin
		hapus := head;
		head := nil;
		tail := nil;
		dispose(hapus);
		dec(n);
		exit;
	end;
	
	hapus := head;
	head := head^.next;
	head^.before := nil;
	dispose(hapus);
	dec(n);
end;

procedure push_back(x : longint);
var
	nilai : p;
begin
	new(nilai);
	nilai^.angka := x;
	
	if n = 0 then
	begin
		head := nilai;
		tail := nilai;
		nilai^.next := nil;
		nilai^.before := nil;
	end else
	begin
		nilai^.before := tail;
		nilai^.next := nil;
		tail^.next := nilai;
		tail := nilai;
	end;
	inc(n);
end;

procedure push_front(x : longint);
var
	nilai : p;
begin
	new(nilai);
	nilai^.angka := x;
	
	if n=0 then
	begin
		head := nilai;
		tail := nilai;
		nilai^.next := nil;
		nilai^.before := nil;
	end else
	begin
		head^.before := nilai;
		nilai^.before := nil;
		nilai^.next := head;
		head := nilai;
	end;
	inc(n);
end;

procedure cetak;
var
	node : p;
begin
	if head = nil then
		exit;
		
	node:=head;
        while node<>tail do
          begin
             writeln (node^.angka);
             node:=node^.next;
          end;
        writeln (tail^.angka);
end;

function potong(perintah : string; awal, akhir : byte):string;
var 
	i : byte;
	x : string;
begin
	x := '';
	for i := awal to akhir do
		x := x + perintah[i];
	potong := x;
end;

begin
	head := nil;
	tail := nil;
	n := 0;
	readln(k);
	for i := 1 to k do
	begin
		readln(perintah);
		if (perintah = 'pop_back') or (perintah = 'pop_front') then
		begin
			case perintah of
			'pop_back' : pop_back;
			'pop_front' : pop_front;
			end;
		end else
		begin
			if pos('push_back', perintah) <> 0 then
			begin
				val(potong(perintah, 11, length(perintah)), tmp);
				push_back(tmp);
			end else
			begin
				val(potong(perintah, 12, length(perintah)), tmp);
				push_front(tmp);
			end;
		end;
	end;
	cetak;
end.