# function.exs
defmodule FunctionExample do
  def my_function(param) do
    x = param + 10
    x = if x > 15 do
      x - 5
    else
      x + 5
    end
    Enum.reduce(0..2, x, fn i, acc -> acc + i end)
  end
end

IO.write("Enter an integer: ")
input = IO.gets("") |> String.trim()
param = String.to_integer(input)
if param == 0 and input != "0" do
  IO.puts("Invalid input")
else
  IO.puts(FunctionExample.my_function(param))
end
