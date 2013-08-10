program Chingoon( output );

function string_repeat (s: string; i: integer) : string;
begin
  var temp: string := '';

  while i > 0 do
  begin
    temp := temp + s;
    i := i - 1
  end;

  string_repeat := temp;
end;

begin
  var chins: integer := 0;
  var scale: integer := 2;
  if paramcount >= 1 then begin
    var conversion_result: integer;

    {Convert the chins arg to int and check the value}
    val(paramstr(1), chins, conversion_result);

    if conversion_result <> 0 then begin
      chins := 0;
    end;

    if chins < 0 then begin
      chins := 0;
    end;

    {If the scale arg is present, parse, set, check}
    if paramcount >= 2 then begin
      val(paramstr(2), scale, conversion_result);

      if conversion_result <> 0 then begin
        scale := 2;
      end;

      if scale < 2 then begin
        scale := 2;
      end;
    end;
  end;

  write(' '); write(string_repeat('_', scale)); writeln('________');
  write('('); write(string_repeat('-', scale)); writeln('[ .]-[ .]');

  {No chins}
  if chins = 0 then
  begin
    write('('); write(string_repeat('_', scale)); writeln('_____O__)');
    halt(0);
  end;

  {Some chins}
  write('('); write(string_repeat(' ', scale)); writeln('     O  )');

  while chins > 1 do
  begin
    chins := chins - 1;
    write('('); write(string_repeat(' ', scale)); writeln('        )');
  end;

  write('('); write(string_repeat('_', scale)); writeln('________)');
end.
