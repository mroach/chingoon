with Ada.Text_IO; use Ada.Text_IO;
with Ada.Command_Line; use Ada.Command_Line;

procedure ChinGoon is
    Chincount : Integer := 0;
begin
    if Argument_Count = 1 then
        Chincount := Integer'Value(Argument(1));
    end if;

    Put_Line(" __________");
    Put_Line("(--[ .]-[ .]");
    if Chincount > 0 then
        Put_Line("(       O  )");
    end if;

    for I in 1..(Chincount - 1) loop
        Put_Line("(          )");
    end loop;

    if Chincount = 0 then
        Put_Line("(_______O__)");
    else
        Put_Line("(__________)");
    end if;

end ChinGoon;
