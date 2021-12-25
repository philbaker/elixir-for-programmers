defmodule Spawn do
  def hello do
    "hello"
  end
end

# Spawn.hello
# => "hello"

# The spawn function creates a new process (an exlixir process)

spawn fn -> IO.puts("Hello") end
# => Hello
# => #PID<0.200.0>

spawn fn -> Process.sleep(1000); IO.puts("Hello") end 
