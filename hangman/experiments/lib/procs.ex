defmodule Procs do
  def hello(count) do
    receive do
      { :crash, reason } ->
	exit(reason)
      { :quit } ->
	IO.puts "I'm outta here"
      { :add, n } -> 
	hello(count + n)
      msg -> IO.puts("#{count}: Hello #{inspect msg}")
      hello(count)
    end
  end
end

# pid = spawn Procs, :hello, [ 0 ]
# send pid, "dave"
# send pid, "lola"
# send pid, "cloira"
# send pid, {:add, 99}
# send pid, { :quit }
# Process.alive? pid
# send pid, { :crash, :kaboom }
# Process.alive? pid

# pid = spawn_link Procs, :hello, [ 0 ]
# send pid, { :crash, :normal }
