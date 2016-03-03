defmodule Octet do
  @moduledoc """
  Elixir converter to convert octet string to string and vise versa
  """

  @doc """
  Convert octet string to binary

  ## Examples

      iex> Octet.string_to_bin("aa09ab")
      <<170, 9, 171>>
      iex> Octet.string_to_bin("ffddaa")
      <<255, 221, 170>>
  """
  def string_to_bin(string) do
    do_string_to_bin(string, <<>>)
  end

  @doc """
  Convert binary list to octet string

  ## Examples

      iex> Octet.bin_to_string(<<170, 9, 171>>)
      "aa09ab"
      iex> Octet.bin_to_string(<<255, 221, 170>>)
      "ffddaa"
  """
  def bin_to_string(bin) do
    do_bin_to_string(bin, "")
  end

  # Private function
  @chars [?0, ?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?a, ?b, ?c, ?d, ?e, ?f] |> Enum.with_index

  defp do_string_to_bin(<<>>, acc), do: acc
  defp do_bin_to_string(<<>>, acc), do: acc

  for {a, i} <- @chars, {b, j} <- @chars, value = i * 16 + j do
    defp do_string_to_bin(<<unquote(a), unquote(b), remain::binary>>, acc),
      do: do_string_to_bin(remain, acc <> <<unquote(value)>>)

    defp do_bin_to_string(<<unquote(value), remain::binary>>, acc),
      do: do_bin_to_string(remain, acc <> <<unquote(a), unquote(b)>>)
  end
end
