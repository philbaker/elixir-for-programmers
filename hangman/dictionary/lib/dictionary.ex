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
end

Dictionary.hello

Dictionary.random_word

# memorable_quote = "had we but world enough, and time"
# String.split(memorable_quote, ",", trim: true)

# letters = String.split(memorable_quote, "")

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

String.to_integer("41", 16)


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
