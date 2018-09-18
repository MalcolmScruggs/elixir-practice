defmodule Practice.Calc do
  def calc(expr) do
    # This should handle +,-,*,/ with order of operations,
    # but doesn't need to handle parens.
    case isOnlyNumAndOperators(expr) do
      true -> evaluate(expr)
      false -> "Invalid expression. Expression must only contain numbers and following operations: +, -, *, /"
    end
  end

  def evaluate(expr) do
    x = Code.eval_string(expr)
    elem(x, 0)
  end

  def isOnlyNumAndOperators(str) do
    cond do
         String.match?(str, ~r/^[0-9\+\-\/\*\(\)\ ]+$/) -> true
         true -> false
    end
  end

end
