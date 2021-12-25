defmodule Song do

  def bottle(0), do: "no green bottles"
  def bottle(1), do: "1 green bottle"
  def bottle(n), do: "#{n} green bottles"

  def green_bottle(0), do: :ok
  def green_bottle(n) do
    IO.puts ~s{
      #{bottle(n)} hanging on the wall,
      #{bottle(n)} hanging on the wall,
      and if 1 green bottle,
      should accidentally fall,
      there\'d be #{bottle(n-1)} hanging on the wall.
    }
    green_bottle(n-1)
  end

  def countdown(n) do
    IO.puts n
    if n > 0 do
      countdown(n-1)
    else
      IO.puts "Liftoff!"
    end
  end
end

# Song.green_bottle(3)
# => 3 green bottles hanging on the wall,
# =>       3 green bottles hanging on the wall,
# =>       and if 1 green bottle,
# =>       should accidentally fall,
# =>       there'd be 2 green bottles hanging on the wall.
# =>     
# =>       2 green bottles hanging on the wall,
# =>       2 green bottles hanging on the wall,
# =>       and if 1 green bottle,
# =>       should accidentally fall,
# =>       there'd be 1 green bottle hanging on the wall.
# =>     
# =>       1 green bottle hanging on the wall,
# =>       1 green bottle hanging on the wall,
# =>       and if 1 green bottle,
# =>       should accidentally fall,
# =>       there'd be no green bottles hanging on the wall.
# =>     
# => :ok

# Song.countdown(5)
# => 5
# => 4
# => 3
# => 2
# => 1
# => 0
# => Liftoff!
# => :ok
