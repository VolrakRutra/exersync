defmodule Lasagna do
  @spec expected_minutes_in_oven :: 40
  def expected_minutes_in_oven, do: 40

  @spec remaining_minutes_in_oven(number) :: number
  def remaining_minutes_in_oven(minutes), do: expected_minutes_in_oven() - minutes

  @spec preparation_time_in_minutes(number) :: number
  def preparation_time_in_minutes(layers), do: layers * 2

  @spec total_time_in_minutes(number, number) :: number
  def total_time_in_minutes(layers, minutes) do
    preparation_time_in_minutes(layers) + minutes
  end

  @spec alarm :: <<_::40>>
  def alarm, do: "Ding!"
end
