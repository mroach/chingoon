% bkerley@liam ~/Documents/smokeyrepo/chingoon> erl
% 1> c('chingoon').
% {ok,chingoon}
% 2> chingoon:chingoon(10).
% ok

-module (chingoon).
-export ([chingoon/1]).
-export ([chin_wrapper/1]).

line(Text) -> io:format(Text, []).

top(partial) ->
line(" __________~n"),
line("(--[ .]-[ .]~n");
top(full) ->
  top(partial),
  line("(       O  )~n").

chin_wrapper(Parent) ->
  chin(1),
  Parent!{chin}.

chin_spawner(0) ->
  0;
chin_spawner(Count) ->
  spawn(chingoon, chin_wrapper, [self()]),
  chin_spawner(Count - 1).

chin(0) -> 0;
chin(Count) ->
  line("(          )~n"),
  chin(Count - 1).

bottom() ->
  line("(__________)~n").

loop(1) ->
  bottom();
loop(Num) ->
  receive
    {chin} ->
      loop(Num - 1)
  end.

chingoon(0) ->
  top(partial),
  line("(_______O__)~n");
chingoon(Num) when is_integer(Num), Num >= 0 ->
  top(full),
  chin_spawner(Num - 1),
  loop(Num).
