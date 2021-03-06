defmodule PracticeWeb.PageController do
  require Logger
  use PracticeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def double(conn, %{"x" => x}) do
    {x, _} = Integer.parse(x)
    y = Practice.double(x)
    render conn, "double.html", x: x, y: y
  end

  def calc(conn, %{"expr" => expr}) do
    y = Practice.calc(expr)
    render conn, "calc.html", expr: expr, y: y
  end

  def factor(conn, %{"x" => x}) do
    {x, _} = Integer.parse(x)
    factors = Practice.factor(x)
    render conn, "factor.html", x: x, factors: factors
  end

  def palindrome(conn, %{"str" => str}) do
    res = Practice.palindrome(str)
    render conn, "palindrome.html", str: str, res: res
  end
end
