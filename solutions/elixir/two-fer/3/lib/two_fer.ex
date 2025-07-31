defmodule TwoFer do
  @moduledoc """
  This is a module that splits two things to two individuals, one of whom is me and another may or may not have a name
  """
  @doc """
  Two-fer or 2-fer is short for two for one. One for you and one for me.
  """
  @spec two_fer(String.t()) :: String.t()
  def two_fer(name \\ "you") when is_binary(name) do
    "One for #{name}, one for me."
  end
end
