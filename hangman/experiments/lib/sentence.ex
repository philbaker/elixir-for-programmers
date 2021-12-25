defmodule Sentence do
  def titlecase(title) do
    title
    |> String.split()
    |> Enum.map(&String.capitalize/1)
    |> Enum.join(" ")
  end
end

Sentence.titlecase("Now is the time")
# => "Now Is The Time"
