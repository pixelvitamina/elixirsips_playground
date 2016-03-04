defmodule FirstModules do
  @moduledoc """
    A Module for training *Elixir*
  """

  @doc """
    Returns the sum of an array
  """
  def sum(a) do
    case a do
      [h|t] -> h + sum(t)
      [] -> 0
    end
  end

  # --- some stupid TDD requirements --

  @doc """
    Upperacases every other world in a sentence. Example:

    iex> FirstModules.uppercase("you are silly")
    "you ARE silly"
  """
  def uppercase(string) do
    String.split(string)
    |> Stream.with_index
    |> transform_every_other_word(&String.upcase/1)
    |> Enum.join(" ")
  end

  defp transform_every_other_word(words, transformer) do
    transformation = fn({word, index}) ->
        cond do
          rem(index,2) == 0 -> word
          rem(index,2) == 1 -> transformer.(word)
        end
      end
    Enum.map(words, transformation)
  end
end
