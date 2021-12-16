defmodule HangmanTest do
  use ExUnit.Case
  doctest Hangman

  test "reality" do
    assert 1 + 2 == 3
  end

  test "unreality" do
    assert 2 + 2 == 4
  end
end
