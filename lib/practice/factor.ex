defmodule Practice.Factor do
  require Logger

  def factor(num) when num > 0 and is_integer(num) do
    factor(num, 2, [])
  end

  def factor(num) do
    ["Please enter a positive integer"]
  end
  
  defp factor(num, f, factors) do
    cond do
      num < f -> factors
      rem(num, f) == 0 -> [ f | factor(div(num, f), f, factors)]
      true -> factor(num, f+1, factors)
    end
  end

end
