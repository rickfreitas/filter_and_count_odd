defmodule FilterAndCountOdd do
  require Integer

  def call(list), do: filter_and_count_odd(list)

  def filter_and_count_odd(list) do
    Enum.reduce(list, 0, fn elem, acc -> acc + check_and_format(elem) end)
  end

  def check_and_format(n) do
    n_as_number = turn_to_number(Integer.parse(n))

    if(Integer.is_odd(n_as_number)) do
      1
    else
      0
    end
  end

  def turn_to_number(:error), do: 0
  def turn_to_number({n, _}), do: n
end
