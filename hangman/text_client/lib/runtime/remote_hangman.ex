defmodule TextClient.Runtime.RemoteHangman do

  @remote_server :hangman@x270 

  def connect() do
    :rpc.call(@remote_server, Hangman, :new_game, [])
  end
end
