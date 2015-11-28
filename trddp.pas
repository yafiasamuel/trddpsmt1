uses crt;
var a,b,c,pilihan : integer;

BEGIN
cursoroff;
{
-------------------------------------------------
Loading
-------------------------------------------------
}
        clrscr;
        //atas
        gotoxy(25,10);
        write(#201);
        for a:=1 to 31 do write(#205);
        write(#187);
        //bawah
        gotoxy(25,16);
        write(#200);
        for a:=1 to 31 do write(#205);
        write(#188);


        //samping
        for a:=11 to 15 do
        begin
                gotoxy(25,a);
                write(#186);
                gotoxy(57,a);
                write(#186);
        end;



        //isi
        textcolor(green);
        gotoxy(35,12);write('Loading');
        b:=29; //untuk sumbu x saat loading
        for a:=1 to 100 do
        begin
                gotoxy(43,12); write(a,'%');
                delay(50);

                if a mod 4 = 0 then //jika a dpt dibagi dgn 4
                begin
                        gotoxy(b,14);
                        write(#177);
                        b:=b+1;
                end;

                if a = 100 then  //jika sdh 100%
                begin
                        gotoxy(28,14); write('Press any key to continue ');
                end;
        end;

{
---------------------------------
        Menu
----------------------------------
}
        clrscr;
        textcolor(white);
        writeln('---TR DDP 2015---');
        writeln('1. Bilangan Prima');
        writeln('2. ATM');
        writeln('3. Pohon Natal');
        writeln('4. Exit');
        write('Masukkan pilihan Anda : '); readln(pilihan);
        case pilihan of
        1:write('pilihan 1');
        end;

readkey;
END.
