defmodule ExCli do
  @moduledoc """
  Documentation for `ExCli`.
  """

  def main(args \\ []) do
    args
    |> parse_args
    |> response
    |> IO.puts()
  end

  defp parse_args(args) do
    {opts, word, _} =
      args
      |> OptionParser.parse(
        aliases: [h: :help, u: :upcase],
        strict: [help: :boolean, upcase: :boolean]
      )

    %{help: opts[:help], upcase: opts[:upcase], word: List.to_string(word)}
  end

  defp response(%{help: true, word: word}), do: "help! #{word}"
  defp response(%{upcase: true, word: word}), do: String.upcase(word)
  defp response(%{word: word}), do: word
  defp response(%{}), do: "error no match"
end
