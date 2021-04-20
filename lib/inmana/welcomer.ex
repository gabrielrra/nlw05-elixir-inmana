defmodule Inmana.Welcomer do
  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)
    name |> String.trim() |> String.downcase() |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "At age 42, you are very special banana"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}, you are #{age}yo"}
  end

  defp evaluate(name, age) do
    {:error, "You shall not pass #{name}! You are only #{age}yo"}
  end
end
