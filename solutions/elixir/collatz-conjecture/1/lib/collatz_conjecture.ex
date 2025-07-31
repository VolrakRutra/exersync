defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input, acc \\ 0) do
    if input <= 0 do
      raise FunctionClauseError, "Input can't be less than 1"
    end
    if is_binary(input) do
      raise FunctionClauseError, "Input can't be a string"
    end
    if input == 1 do
      acc
    else
      if rem(input, 2) == 0 do
        calc(div(input, 2), acc + 1)
      else
        calc(input * 3 + 1, acc + 1)
      end
    end
  end
end
