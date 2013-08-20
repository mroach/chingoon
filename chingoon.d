import std.stdio;
import std.conv;

pragma(msg, "Compiling the advanced chingoon generator");

immutable(char)[] TOP   = " __________";
immutable(char)[] EYES  = "(--[ .]-[ .]";
immutable(char)[] FATTY = "(       O  )";
immutable(char)[] SLIM  = "(_______O__)";
immutable(char)[] FAT   = "(          )";
immutable(char)[] CHIN  = "(__________)";

void main(string[] args)
{
  int chins = 0;

  if (args.length > 1)
  {
    chins = to!int(args[1]);
  }

  // begin goon printing
  writeln(TOP);
  writeln(EYES);

  // slim goon
  if (chins == 0) {
    writeln(SLIM);
    return;
  }

  // fat goon
  writeln(FATTY);
  while (--chins) {
    writeln(FAT);
  }
  writeln(CHIN);
}

pragma(msg, "Finished compiling chingoon. Enjoy chinning.");
