defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 0 and legacy? -> :unknown
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and not legacy? -> :fatal
      level == 5 and legacy? -> :unknown
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      level == 4 -> :ops
      not legacy? and level == 5 -> :ops
      level == 6 and legacy? -> :dev1
      level == 5 and legacy? -> :dev1
      level == 0 and legacy? -> :dev1
      level == 6 -> :dev2
      true -> false
    end
  end
end
