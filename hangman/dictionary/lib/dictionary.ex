defmodule Dictionary do
  @word_list "assets/words.txt"
  |> File.read!()
  |> String.split(~r/\n/, trim: true)

  def random_word do
    @word_list
    |> Enum.random()
  end

  def hello do
    "hiya"
  end

  def func({ a, b }) do
    IO.puts "a = #{a}, b = #{b}"
  end

  def func2(t = { a, b }) do
    IO.puts "a = #{a}, b = #{b}, is_tuple{t}"
  end

  # This function is only called if it is passed a two
  # element tuple where the first element is :ok
  def read_file({ :ok, file }) do
    file
    |> IO.read(:line)
  end

  # This function is only called if it is passed a two
  # element tuple where the first element is :error
  def read_file({ :error, reason }) do
    Logger.error("File error: #{reason}")
    []
  end

  def swap_tuple({ first, second }) do
    { second, first }
  end

  def same(a, a) do
    true
  end

  def same(_, _) do
    false
  end
end

# r Dictionary

# Dictionary.hello
# => "hiya"

# Dictionary.random_word
# => "dependent"

# memorable_quote = "had we but world enough, and time"

# String.split(memorable_quote, ",", trim: true)
# => ["had we but world enough", " and time"]

# letters = String.split(memorable_quote, "")
# => ["", "h", "a", "d", " ", "w", "e", " ", "b", "u", "t", " ", "w", "o", "r", "l",
# =>  "d", " ", "e", "n", "o", "u", "g", "h", ",", " ", "a", "n", "d", " ", "t", "i",
# =>  "m", "e", ""]

# String.codepoints(memorable_quote)

# String.to_charlist(memorable_quote)

# String.to_charlist("abc");

# String.reverse(memorable_quote)

# String.myers_difference(memorable_quote, "had we but bacon enough, and treacle")

# Enum.join(Enum.sort(String.split("hello", "")))

# "hello"
#   |> String.split("")
#   |> Enum.sort
#   |> Enum.join

# "assets/words.txt"
#   |> File.read!
#   |> String.split(~r/\n/)
#   |> Kernel.length

# "hello\tworld\ttabs\trule"
  # |> String.split(~r/\t/)
#   |> Enum.join(",")
#
# Numbers

# 8 / 3

# div(8, 3)

# trunc(8/3)

# round(8/3)

# String.to_integer("65");

# String.to_integer("41", 16)

# String.to_integer("1000001", 2)

# Atoms
# Constants that are used to name things
# a = 99
# => 99

# :"next-number: #{a+1}"
# => :"next-number: 100"

# is_atom(Dictionary)
# => true

# fname = "/etc/passwd"
# => "/etc/passwd"

# content = File.exists?(fname) && File.read!(fname)
# => "root:x:0:0:root:/root:/bin/bash\...

# fname = "/etc/not-a-file"
# => "/etc/not-a-file"

# content = File.exists?(fname) && File.read!(fname)
# => false

# Ranges
# a = 5..10
# => 5..10

# b = 8..3
# => 8..3//-1

# 4 in a
# => false

# 4 in b
# => true

# for i <- b, do: i*3
# => [24, 21, 18, 15, 12, 9]

# ~c/cat\0/
# => [99, 97, 116, 0]

# ~r/cat/i
# => ~r/cat/i

# ~s/dog/
# => "dog"

# ~w/now is the time/
# => ["now", "is", "the", "time"]

# name = "Betty"
# => "Betty"

# ~s/Hello #{name}\n/
# => "Hello Betty\n"

# ~c/#{name}\0/
# => [66, 101, 116, 116, 121, 0]

# ~S/Hello #{name}\n/
# => "Hello \#{name}\\n"
# Uppercase equivalents do no expansion

# age = 44
# "Name:\t#{name}\nAge:\t#{ trunc(age) }"
# => "Name:\tBetty\nAge:\t44"

# ~S"Name:\t#{name}\nAge:\t#{ trunc(age) }"
# => "Name:\\t\#{name}\\nAge:\\t\#{ trunc(age) }"
# To turn off substitutions, use the sigil form with an upper case S

# "#{Time.utc_now}"
# => "16:06:22.062575"

# ~s/#{Time.utc_now}/
# => "16:07:20.692071"

# IO.puts(~s/"1 + 2 = #{ 1 + 2}"/)
# => "1 + 2 = 3"
# => :ok

# IO.puts(~S/"1 + 2 = #{ 1 + 2}"/)
# => "1 + 2 = #{ 1 + 2}"
# => :ok

# ~w/now is the time/
# => ["now", "is", "the", "time"]

# str = "once upon a time"
# => "once upon a time"
# str =~ ~r/u..n/
# => true
# str =~ ~r/u..m/
# => false

# str = "abc"
# str =~ ~r/a.c/
# => true

# str = "ace"
# str =~ ~r/a.c/
# => false

# str = "arc"
# str =~ ~r/a.c/
# => true

# "cats like catnip"
# |> String.replace(~r/cat/, "dog")
# => "dogs like dognip"

# "cats like catnip"
# |> String.replace(~r/cat/, "dog", global: false)
# => "dogs like catnip"

# Tuples - used to group data. Usually small (two or three elements)
# { :ok, "wilma" }
# { :reply, destination, "rain with a chance of hail" }
# { 1, 2, 3+4 }

# Lists
# Note: lists are not arrays
# An array is a contiguous area of memory containing fixed size cells
# If you want to find the nth element in an array, you perform some
# simple address arithmetic
#
# Lists are a sequence of zero or more elements, one linked to the next
# Lists are a recursive data structure and are better suited to
# functional programming than a traditional array (imperative style)

# empty = []
# => []
# list_3 = [ 3 | empty ]
# => [3]
# list_2_3 = [ 2 | list_3 ]
# => [2, 3]
# list_1_2_3 = [ 1 | list_2_3 ]
# => [1, 2, 3]

# Improper lists
# Chances are you'll only run in to these when making a mistake
# during list construction
# i = [ 1 | 2 ]
# => [1 | 2]
# [ head | tail ] = i
# => [1 | 2]
# head
# => 1
# tail
# => 2
# length(i)
# error

# Maps
# countries = %{
#   "BFA" => "Burkina Faso",
#   "BDI" => "Burundi",
#   "KHM" => "Cambodia",
#   "CMR" => "Cameroon",
#   "CAN" => "Canada",
# }
# => %{
# =>   "BDI" => "Burundi",
# =>   "BFA" => "Burkina Faso",
# =>   "CAN" => "Canada",
# =>   "CMR" => "Cameroon",
# =>   "KHM" => "Cambodia"
# => }
# countries["BFA"]
# => "Burkina Faso"
# countries["XXX"]
# => nil
# countries[123]
# => nil

# When keys are all atoms (symbols) Elixir has a shortcut syntax
# In a map constant once: 1 is the same as writing :once => 1
# multipliers = %{ once: 1, twice: 2, thrice: 3 }
# => %{once: 1, thrice: 3, twice: 2}
# 5 * multipliers[:twice]
# => 10
# 5 * multipliers.twice
# => 10

# When you use the [] notation, then a map either returns the value
# or nil. When you use the dot notation, Elixir raises an error for
# unknown keys
# map = %{ one: "first", two: "second" }
# => %{one: "first", two: "second"}
# map[:one]
# => "first"
# map.one
# => "first"
# map[:three]
# => nil
# map.three
# => %KeyError{key: :three, message: nil, term: %{one: "first", two: "second"}}

# Pattern matching
# A major part of writing concise, idiomatic Elixir
# The ability to match arbitrary structured data against a pattern,
# extracting elements of the data along the way
# Elixir lets you choose what code to run based on the patterns that
# match
# a = 1
# => 1
# a + 1
# => 2
# 1 = a
# => 1
# 2 = a
# => %MatchError{term: 1}

# = is not really an assignment operator in Elixir
# When = is used Elixir has to make the left and right sides of =
# the same. It does this by binding a variable to a value.
# This binding can only happen on the left hand side of the equals sign
# e.g. c = 5 will return 5 but 5 = c will throw an error (because 5
# cannot be assigned). If you run 5 = c after c = 5 it will return 5
# 5 = c
# error
# c = 5
# => 5
# 5 = c
# => 5

# Elixir can also pattern match tuples. In this case it binds a to
# "cat" and b to "dog"
# { a, b } = { "cat", "dog" }
# => {"cat", "dog"}
# a
# => "cat"
# b
# => "dog"

# { a, a } = { "cat", "dog" }
# => %MatchError{term: {"cat", "dog"}}

# Note: the left hand side cannot contain any calculations or function calls
# x*x -2*x + 1 = 0
# error

# Pattern matching is often used in cases where you want something
# to succeed, or if something goes wrong fail e.g.:
# "Fail early" is an idiomatic approach in Elixir
# { :ok, file } = File.open("/etc/passwd")
# => {:ok, #PID<0.315.0>}
# { :ok, file } = File.open("/made-up-file.txt")
# => %MatchError{term: {:error, :enoent}}

# a = 23
# => 23

# b = 27
# a = b + 3
# => 30

# [a, b] = [3, 4, 5]
# => %MatchError{term: [3, 4, 5]}

# [a, b] = [3, 3]
# => [3, 3]

# a + 1 = 5
# error

# [a, b] = 4
# => %MatchError{term: 4}

# [a, a] = [3, 4]
# => %MatchError{term: [3, 4]}

# [x, [a, b]] = [1, [2, 3]]
# => [1, [2, 3]]

# [a, a - 1] = [3, 2]
# error

# [b, a, b, c] = [0, 1, 0, 2]
# => [0, 1, 0, 2]

# A single underscore can be used as a placeholder,
# useful when you want to match the structure of a value,
# but don't care about some of the values it contains

# match a three element list
# [a, _, _]

# match a three element list where first and last elements
# are the same
# [a, _, a]

# extract just the head of a list
# [h | _]

# Matching using variables
# first = 42
# => 42
# { first, second } = { 42, 53 }
# => {42, 53}
# first
# => 42

# first = 42
# => 42
# { first, second } = { 0, 1 }
# => {0, 1}
# first
# => 0

# If you want to keep first as 42 rather that it being
# reassigned use the ^ character

# first = 42
# => 42
# { ^first, second } = { 42, 53 }
# => {42, 53}
# { ^first, second } = { 0, 1 }
# => %MatchError{term: {0, 1}}

# Functions pattern match their parameters
# Dictionary.func({ 1, 2 })
# => a = 1, b = 2
# => :ok

# Dictionary.func2({ 1, 2 })
# => a = 1, b = 2, is_tuple{t}
# => :ok

# "README.md"
# |> File.open
# |> Dictionary.read_file
# => "# Dictionary\n"

# "my_file.txt"
# |> File.open
# |> Dictionary.read_file
# => %UndefinedFunctionError{
# =>   arity: 1,
# =>   function: :error,
# =>   message: nil,
# =>   module: Logger,
# =>   reason: nil
# => }

# Dictionary.swap_tuple({ "a", "b" })
# => {"b", "a"}

# Dictionary.same("a", "a")
# => true

# Dictionary.same("a", "b")
# => false

# Pattern matching, lists and recursion
# { a, { b, c }} = { 1, { 2, 3 }}
# => {1, {2, 3}}
# a
# => 1
# b
# => 2
# c
# => 3

# { 1, { b, 3 }} = { 1, { 2, 3 }}
# => {1, {2, 3}}

# [ a, b, c ] = [ 4, 5, 6 ]
# => [4, 5, 6]
# a
# => 4

# [ a, b ] = [ 6, 7, 8 ]
# => %MatchError{term: [6, 7, 8]}

# a = [ 2, 3 ]
# => [2, 3]
# b = [ 1 | a ]
# => [1, 2, 3]

# [ ]
# => []

# b = [ 1 | []]
# => [1]

# [ a | b ] = [ 1, 2, 3 ]
# => [1, 2, 3]
# a
# => 1
# b
# => [2, 3]

# [ a1, a2 | b ] = [ 1, 2, 3 ]
# => [1, 2, 3]
# a1
# => 1
# a2
# => 2
# b
# => [3]

# [ a1, a2, a3 | b ] = [ 1, 2, 3 ]
# => [1, 2, 3]
# a1
# => 1
# a2
# => 2
# a3
# => 3
# b
# => []

# [ a1, a2, a3, a4 | b ] = [ 1, 2, 3 ]
# => %MatchError{term: [1, 2, 3]}
