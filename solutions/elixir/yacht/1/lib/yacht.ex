defmodule Yacht do
  @type category ::
          :ones
          | :twos
          | :threes
          | :fours
          | :fives
          | :sixes
          | :full_house
          | :four_of_a_kind
          | :little_straight
          | :big_straight
          | :choice
          | :yacht

  @doc """
  Calculate the score of 5 dice using the given category's scoring method.
  """
  @spec score(category :: category(), dice :: [integer]) :: integer
  def score(category, dice) do
    case category do
      :ones -> Enum.count(dice, &(&1 == 1))
      :twos -> Enum.count(dice, &(&1 == 2)) * 2
      :threes -> Enum.count(dice, &(&1 == 3)) * 3
      :fours -> Enum.count(dice, &(&1 == 4)) * 4
      :fives -> Enum.count(dice, &(&1 == 5)) * 5
      :sixes -> Enum.count(dice, &(&1 == 6)) * 6
      :yacht ->
        [head | _tail] = dice
        if Enum.all?(dice, fn x -> x == head end) do
          50
        else
          0
        end
      :choice -> Enum.sum(dice)
      :four_of_a_kind ->
        [first_head | tail] = dice
        [second_head | _tail] = tail
        cond do
          Enum.count(dice, &(&1 == first_head)) >= 4 -> first_head * 4
          Enum.count(dice, &(&1 == second_head)) >= 4 -> second_head * 4
          true -> 0
        end
      :big_straight ->
        if length(Enum.uniq(dice)) == 5 and 6 in dice and 1 not in dice do
          30
        else
          0
        end
      :little_straight ->
        if length(Enum.uniq(dice)) == 5 and 1 in dice and 6 not in dice do
          30
        else
          0
        end
      :full_house ->
        unique = Enum.uniq(dice)
        if length(unique) != 2 do
          0
        else
          [first, second] = unique
          if Enum.count(dice, &(&1 == first)) == 3 or Enum.count(dice, &(&1 == second)) == 3 do
            Enum.sum(dice)
          else
            0
          end
        end
    end
  end
end
