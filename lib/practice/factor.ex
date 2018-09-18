defmodule Practice.Factor do
  require Logger

  def factor(num) when num > 0 and is_integer(num) do
#    TODO restrict to only positive integers
    x = factor(num, 2, [])
    Logger.info("#{inspect x}")
    x
  end
  
  defp factor(num, f, factors) do
    cond do
      num < f -> factors
      rem(num, f) == 0 -> [ f | factor(div(num, f), f, factors)]
      true -> factor(num, f+1, factors)
    end
  end

end
