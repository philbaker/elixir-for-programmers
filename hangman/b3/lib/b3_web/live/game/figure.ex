defmodule B3Web.Live.Game.Figure do

  use B3Web, :live_component

  def mount(socket) do
    { :ok, socket }
  end

  def render(assigns) do
    ~H"""
    <p>In figure</p>
    """
  end
end
