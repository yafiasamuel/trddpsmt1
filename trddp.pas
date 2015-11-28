uses crt;
var a,b,c : integer;
BEGIN
        clrscr;
        //atas
        gotoxy(25,10);
        write(#201);
        for a:=1 to 30 do write(#205);
        write(#187);
        //bawah
        gotoxy(25,16);
        write(#200);
        for a:=1 to 30 do write(#205);
        write(#188);


        //samping
        for a:=11 to 15 do
        begin
                gotoxy(25,a);
                write(#186);
                gotoxy(56,a);
                write(#186);
        end;

        readkey;

END.
