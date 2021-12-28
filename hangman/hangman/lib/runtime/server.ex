defmodule Hangman.Runtime.Server do

  alias Hangman.Impl.Game
  use GenServer

  # Client process
  def start_link do
    GenServer.start_link(__MODULE__, nil)
  end

  # Server process
  def init(_) do
    { :ok, Game.new_game }
  end
end
