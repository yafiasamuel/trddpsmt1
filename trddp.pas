uses crt;
var a,b,c,jum,bil,pilihan : integer;
yn,jawab : char;
label menu;

procedure natal;
begin
repeat
clrscr;
write('masukkan  Tinggi cemara : ');readln(jum);
clrscr;
        for a:= 0 to jum do begin

if a mod 2=1  then begin
        for b:= 0 to jum-a do begin
        write(' ');
        end;
        for c:= 0 to  (a*2) do begin
if c  mod 7=0 then begin
textcolor(green);
write('$');
delay(300);
end;
if c mod 7=1 then begin
textcolor(white);
write('$');
end;
if c mod 7=2 then begin
textcolor(white);
write('*');
end;
if c mod 7=3 then begin
textcolor(green);
write('*');
end;
if c mod 7=4  then begin
textcolor(white);
write('*')
end;
if c mod 7=5 then begin
textcolor(white);
write(';');
end;
if c mod 7=6 then begin
textcolor(green);
write(';');
end;
end;
end;
if a  mod 2=0 then begin
textcolor(red);
        for b:=0 to jum-a do begin
        write(' ');
        end;
        for c:=0 to (a*2) do
        begin
        write('~');
        end;
        end;
        writeln();
        end;
 for a:=2 to jum-2 do
begin
       for  b:=0 to jum- 2 do
                begin
                        write(' ');textcolor(1);
                end;
       for  c:= 1 to jum-b do
                begin
                        textcolor(jum);write('/|\');
                end;
        writeln;
end;

write('Apakah ingin mengulang ? (y/t> :');readln(jawab);
until jawab <> 'y';
end;

{
------------------
Bilangan Prima
------------------
}
procedure prima;
begin
        repeat
          clrscr;
          write('Masukkan bilangan : '); readln(bil);
          b := 0;
          writeln;
          for a:=1 to bil do
            begin
              if bil mod a = 0 then
               b := b+1;
          end;

          if b=2 then
            writeln(bil,' merupakan bilangan prima')
          else
            writeln(bil, ' bukan bilangan prima');

          delay(500);
          writeln;
          write('Coba Lagi? (Y/T) : '); readln(yn);

        until (yn = 't') OR (yn = 'T');


end;

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
        menu:
        clrscr;
        textcolor(white);
        writeln('---TR DDP 2015---');
        writeln('1. Bilangan Prima');
        writeln('2. ATM');
        writeln('3. Pohon Natal');
        writeln('4. Exit');
        write('Masukkan pilihan Anda : '); readln(pilihan);
        case pilihan of
        1:prima;
        3:natal;
        end;
        //verifikasi pilihan y/n
        if (yn <> 'Y') or (yn <> 'y') then goto menu;


readkey;
END.
