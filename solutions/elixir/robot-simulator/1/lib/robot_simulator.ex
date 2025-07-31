defmodule RobotSimulator do
  @type robot() :: %{position: position(), direction: direction()}
  @type direction() :: :north | :east | :south | :west
  @type position() :: {integer(), integer()}

  defguard is_direction(direction) when direction == :north
    or direction == :south
    or direction == :east
    or direction == :west

  defguard is_position(position) when is_tuple(position)
    and tuple_size(position) == 2
    and is_integer(elem(position, 0))
    and is_integer(elem(position, 1))
  @doc """
  Create a Robot Simulator given an initial direction and position.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec create(direction, position) :: robot() | {:error, String.t()}
  def create(direction, position) when is_direction(direction) and is_position(position) do
    %{position: position, direction: direction}
  end

  def create() do
    %{position: {0, 0}, direction: :north}
  end

  def create(direction, _position) when not is_direction(direction) do
    {:error, "invalid direction"}
  end

  def create(_direction, position) when not is_position(position) do
    {:error, "invalid position"}
  end

  def create(direction, position) do
    if position == nil do
      ^position = {0, 0}
    end
    if direction == nil do
      ^direction = :north
    end
    %{position: position, direction: direction}
  end

  @doc """
  Simulate the robot's movement given a string of instructions.

  Valid instructions are: "R" (turn right), "L", (turn left), and "A" (advance)
  """
  @spec simulate(robot, instructions :: String.t()) :: robot() | {:error, String.t()}
  def simulate(robot, instructions) do
    commands = instructions |> String.codepoints |> Enum.map(fn x -> command_to_func(x) end)
    if Enum.any?(commands, fn x -> x == :error end) do
      {:error, "invalid instruction"}
    else
      Enum.reduce(commands, robot, fn fun, acc -> fun.(acc) end)
    end
  end


  @spec rotate_right(robot()) :: robot()
  def rotate_right(robot) do
    pos = position(robot)
    case direction(robot) do
      :north -> %{position: pos, direction: :east}
      :east -> %{position: pos, direction: :south}
      :south ->  %{position: pos, direction: :west}
      :west -> %{position: pos, direction: :north}
    end
  end

  @spec rotate_left(robot()) :: robot()
  def rotate_left(robot) do
    pos = position(robot)
    case direction(robot) do
      :north -> %{position: pos, direction: :west}
      :west -> %{position: pos, direction: :south}
      :south ->  %{position: pos, direction: :east}
      :east -> %{position: pos, direction: :north}
    end
  end

  @spec advance(robot()) :: robot()
  def advance(robot) do
    {x, y} = position(robot)
    case direction(robot) do
      :north -> %{position: {x, y + 1}, direction: :north}
      :west -> %{position: {x - 1, y}, direction: :west}
      :south ->  %{position: {x, y - 1}, direction: :south}
      :east -> %{position: {x + 1, y}, direction: :east}
    end
  end

  @spec command_to_func(any) :: :error | (robot() -> robot())
  def command_to_func(command) do
    case command do
      "L" -> &RobotSimulator.rotate_left/1
      "R" -> &RobotSimulator.rotate_right/1
      "A" -> &RobotSimulator.advance/1
      _ -> :error
    end
  end

  @doc """
  Return the robot's direction.

  Valid directions are: `:north`, `:east`, `:south`, `:west`
  """
  @spec direction(robot) :: direction()
  def direction(robot) do
    Map.get(robot, :direction)
  end

  @doc """
  Return the robot's position.
  """
  @spec position(robot) :: position()
  def position(robot) do
    Map.get(robot, :position)
  end
end
