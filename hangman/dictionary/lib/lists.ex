defmodule Lists do
  # [] = 0
  # [ 1, 3, 5 ] => 3

  def len([]),  do: 0

  def len([h|t]), do: 1 + len(t)

  def hello() do
    "hello"
   end
end

Lists.len([])
# => 0

Lists.len([1, 3, 5])
# => 3
