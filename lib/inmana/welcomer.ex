defmodule Inmana.Welcomer do
  def welcome(params) do
    age = params["age"]

    params["name"] |> String.trim() |> String.downcase() |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    "At age 42, you are very special banana"
  end

  defp evaluate(name, age) when age >= 18 do
    "Welcome #{name}, you are #{age}yo"
  end

  defp evaluate(name, age) do
    "You shall not pass #{name}! You are only #{age}yo"
  end
end
