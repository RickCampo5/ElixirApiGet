defmodule Example do
  @moduledoc """
  Documentation for Example.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello()
      :world

  """
  def main(args) do
    IO.puts "Waiting for response..."
    response = HTTPotion.get "https://swapi.co/api/people/#{List.first(args)}/"
    json = Poison.Parser.parse!(response.body)
    IO.inspect json
    end
end
