defmodule Dictionary do
  def word_list do
    words = File.read!("assets/words.txt")

    String.split(words, ~r/\n/, trim: true)
  end

  def random_word do
    Enum.random(word_list())
  end

  def hello do
    IO.puts "Hello world!!"
  end
end

# Dictionary.hello

# r Dictionary

# Dictionary.hello

# Dictionary.word_list

# Dictionary.random_word

# memorable_quote = "had we but world enough, and time"

# String.split(memorable_quote, ",", trim: true)

# letters = String.split(memorable_quote, "")

# String.codepoints(memorable_quote)

# String.to_charlist(memorable_quote)

# String.to_charlist("abc");

# String.reverse(memorable_quote)

# String.myers_difference(memorable_quote, "had we but bacon enough, and treacle")
