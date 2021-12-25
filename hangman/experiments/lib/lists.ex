defmodule Lists do

  def len([]),  do: 0
  def len([_h|t]), do: 1 + len(t)

  def sum([]),  do: 0
  def sum([h|t]), do: h + sum(t)

  def square([]), do: []
  def square([h|t]), do: [ h * h | square(t) ]

  def double([]), do: []
  def double([h|t]), do: [ h * 2 | double(t) ]

  def map([], _func), do: []
  def map([h|t], func), do: [ func.(h) | map(t, func) ]

  def sum_pairs([]), do: []
  def sum_pairs([ h1, h2 | t ]), do: [ h1 + h2 | sum_pairs(t) ]

  def even_length?([]), do: false
  def even_length?([_a]), do: false
  def even_length?([_a, _b]), do: true
  def even_length?([ _h1, _h2 | t]), do: even_length?(t)
end

# Lists.len([])
# => 0

# Lists.len([1, 3, 5])
# => 3

# Lists.sum([])
# => 0

# Lists.sum([1, 2, 3, 4, 5])
# => 15

# Lists.square([])
# => []

# Lists.square([1, 2, 3, 4, 5])
# => [1, 4, 9, 16, 25]

# Lists.double([])
# => []

# Lists.double([1, 2, 3, 4, 5])
# => [2, 4, 6, 8, 10]

# Lists.map([1, 2, 3, 4], fn x -> 3 * x end)
# => [3, 6, 9, 12]

# Lists.map([1, 2, 3, 4], fn x -> x * x * x end)
# => [1, 8, 27, 64]

# Lists.map([1, 2, 3, 4], &(&1 * 5))
# => [5, 10, 15, 20]

# Enum.map([1, 2, 3, 4], &(&1 * 5))
# => [5, 10, 15, 20]

# Lists.sum_pairs([1, 2, 3, 4, 5, 6 ])
# => [3, 7, 11]

# Lists.sum_pairs([1, 2, 3, 4, 5 ])
# => %FunctionClauseError{
# =>   args: nil,
# =>   arity: 1,
# =>   clauses: nil,
# =>   function: :sum_pairs,
# =>   kind: nil,
# =>   module: Lists
# => }

# Lists.even_length?([])
# => false

# Lists.even_length?([1, 2])
# => true

# Lists.even_length?([1, 2, 3, 4, 5, 6])
# => true

# Lists.even_length?([1, 2, 3])
# => false

# Libraries
# length([1, 2, 3])
# => 3

# Enum.count([1, 2, 3])
# => 3

# Enum.sum([1, 2, 3])
# => 6

# Enum.map([1, 2, 3], fn (val) -> val * 2 end)
# => [2, 4, 6]

# Enum.map([1, 2, 3], &(&1 * 2))
# => [2, 4, 6]
