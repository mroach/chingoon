# Example usage:
# elixir chingoon.exs --chins 4

defmodule Chingoon do
  @top " __________"
  @eyes "(--[ .]-[ .]"
  @zerochin "(_______O__)"

  def generate(chins) do
    IO.puts(@top)
    IO.puts(@eyes)
    gen_chins(chins)
  end

  defp gen_chins(0), do: IO.puts(@zerochin)
  defp gen_chins(chins) do
    IO.puts "(       O  )"
    print_multichin(chins)
  end

  defp print_multichin(chin) when chin > 1 do
    IO.puts("(          )")
    print_multichin(chin - 1)
  end
  defp print_multichin(_), do: IO.puts("(__________)")
end

System.argv()
|> OptionParser.parse(switches: [chins: :integer])
|> (fn {opts, _, _} -> opts end).()
|> Keyword.get(:chins, 0)
|> Chingoon.generate
